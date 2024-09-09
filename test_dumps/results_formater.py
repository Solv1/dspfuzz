import csv
import argparse
import matplotlib.pyplot as plt
import matplotlib.patches as mpatches
import matplotlib.lines as mlines
import numpy as np

parser = argparse.ArgumentParser(
    prog='results_formater.py',
    description='Takes results obtained from fuzzing campaigns and makes sense of it.'
)
parser.add_argument('-f','--filename',dest='filename',action='store',
    help='Filename for insturmention'
)

global_pool_time = []
local_pool_time = []
interrupt_time = []
seed_pull_time = []
throughput_time = []
current_time = []
# setup_time = []
iter_count = []
stat_pull_time = []
intial_setup_time = []
intial_breakpoint_time = []
total_pool_refresh_time = 0
breakpoint_avg = 0
seed_pull_time_avg = 0
setup_time = 0


def grab_results(lines):
    global total_pool_refresh_time, breakpoint_avg, seed_pull_time_avg,setup_time
    error_flag = False
    add_24 = False
    start_time = []

    lines = iter(lines)
    hours_spent = 0
    minutes_spent = 0
    seconds_spent = 0

    for line in lines:
        
        if 'Time of start =' in line:
            split_line = line.split('2024 ')
            time = split_line[1]
            start_time = time.split(':')
            #print(start_time)

        if 'Current time =' in line:
            hours_spent = 0
            minutes_spent = 0
            seconds_spent = 0


            split_line = line.split('2024 ')
            time = split_line[1]
            #print(time)
            current_time = time.split(':')

            if float(current_time[0]) - float(start_time[0]) < 0:
                add_24 = True
                hours_spent += (24 + float(current_time[0])) - float(start_time[0])
            elif add_24:
                hours_spent += (24 +float(current_time[0])) - float(start_time[0]) 
            else:
                hours_spent += float(current_time[0]) - float(start_time[0]) 

            if float(current_time[1]) - float(start_time[1]) < 0:
                hours_spent -= 1
                minutes_spent += (60+ float(current_time[1])) - float(start_time[1])
            else:
                minutes_spent += float(current_time[1]) - float(start_time[1]) 

            if float(current_time[2]) - float(start_time[2]) < 0:
                seconds_spent += (60+ float(current_time[2])) - float(start_time[2])
            else:
                seconds_spent += float(current_time[2]) - float(start_time[2]) 
            #minutes
            hours_spent += (float(minutes_spent+(seconds_spent/60))/60)
            #print(hours_spent)

            stat_pull_time.append(hours_spent)
        if 'DSLOG: Total number of iterations:' in line:
            print(line)
            split_line = line.split('s: ')
            itts = int(split_line[1])
            if(itts == 1):
                iter_count.append(0)
                continue
            
            print(itts/((hours_spent * 3600) ))
            iter_count.append(itts/((hours_spent * 3600) ))
        
        elif 'DSLOG: Time taken for refresh_global_pool' in line:
            split_line = line.split('= ')
            time = float(split_line[1])
            # global_pool_time.append("{:.20f}".format(time))
            global_pool_time.append(time)
        elif 'DSLOG: Time taken for refresh_local_pool' in line:
            split_line = line.split('= ')
            time = float(split_line[1])
            local_pool_time.append(time)
        elif 'DSLOG: Time taken for set_refresh_breakpoint' in line:
            split_line = line.split('= ')
            time = float(split_line[1])
            interrupt_time.append(time)
        elif 'DSERROR:Coverage map returned empty from the device.' in line:
            error_flag = True
        elif 'DSLOG: Time taken for current_seed_to_global_pool' in line:
            if error_flag:
                error_flag = False
                continue
            else:
                split_line = line.split('= ')
                time = float(split_line[1])
                seed_pull_time.append(time)
        elif 'Found coverage-increasing input:' in line:
            # print(next(lines), end='')
            # print(next(lines), end='')
            # print(next(lines), end='')
            # print(next(lines), end='')
            # print(next(lines), end='')
            pass
        elif 'DSLOG: Average throughput time:' in line:
            split_line = line.split('e: ')
            time = float(split_line[1])
            throughput_time.append(time)
        elif 'Time taken for set_intial_breakpoints' in line:
            split_line = line.split('= ')
            time = float(split_line[1])
            intial_breakpoint_time.append(time)
        elif 'DSLOG: Time taken for debug_server_setup' in line:
            split_line = line.split('= ')
            time = float(split_line[1])
            print(time)
            intial_setup_time.append(time)
    #print(len(stat_pull_time))
    #print(len(throughput_time))

    
    local_pool_time_avg = sum(local_pool_time)/len(local_pool_time)
    global_pool_time_avg = sum(global_pool_time)/len(global_pool_time)
    interrupt_time_avg = sum(interrupt_time)/len(interrupt_time)
    setup_time = sum(intial_setup_time)/len(intial_setup_time)
    breakpoint_avg = sum(intial_breakpoint_time)/len(intial_breakpoint_time)
    total_pool_refresh_time = local_pool_time_avg + global_pool_time_avg + interrupt_time_avg
    seed_pull_time_avg = sum(seed_pull_time)/len(seed_pull_time)
    #print (total_pool_refresh_time)
    #print(breakpoint_avg)
    print(iter_count)


def write_to_csv():

    i = 10
    return 




def main():
    global total_pool_refresh_time, breakpoint_avg, seed_pull_time_avg,setup_time
    args = parser.parse_args()
    filename = args.filename

    with open(filename, 'r') as fp:
        lines = fp.readlines()
    grab_results(lines)


    # #---Bar Graph Section---
    # benchmarks = ("branch", "other2", "other3")
    # overheads = {
    #     'Coverage Bubbling': (round(seed_pull_time_avg,3),0,0),
    #     'Local Pool Refresh': (round(total_pool_refresh_time,3),0,0),
    #     'Breakpoint Setting' : (round(breakpoint_avg,3),0, 0),
    #     'Fuzzer Loading' : (round(setup_time,3),0,0)
    # }
    # x = np.arange(len(benchmarks)) # Label Locations
    # width = 0.20
    # multiplier = 0 
    # plt.rcParams.update({'font.size': 10})

    # fig, ax = plt.subplots(layout='constrained')
    # for attribute, measurement in overheads.items():
    #     offset = width * multiplier
    #     rects = ax.bar(x + offset, measurement, width, label=attribute)
    #     ax.bar_label(rects, padding=5)
    #     multiplier +=1

    # ax.set_ylabel('Time (Seconds)')
    # ax.set_xlabel('Software Under Test')
    # ax.set_xticks(x + width, benchmarks)
    # ax.legend(loc='upper right', ncols=2, prop = {"size": 8})
    # plt.ylim([0,setup_time+.5])

    # plt.show()
    #---End Bar Graph Section---
    #---Coverage Graph Section---
    # fig, ax = plt.subplots()
    # baseline_label = mlines.Line2D([],[], color='#3EB489', label='branch')
    # ax.legend(handles=[baseline_label])
    # branch_cov_time = [0,0.2261,3.331,24]
    # basic_blocks_found = [0,2,3,3]

    # plt.rcParams.update({'font.size': 10})
    # plt.plot(branch_cov_time, basic_blocks_found, c='#3EB489')
    # plt.xlim([0,24])
    # plt.ylim([min(basic_blocks_found), max(basic_blocks_found)+1])
    # plt.yticks(np.arange(0,5,1))
    # plt.xticks(np.arange(0,25,1))
    # plt.ylabel('Coverage Found (Basic Block)')
    # plt.xlabel('Time (Hours)')
    # plt.show()
    #---End Coverage Graph Section---
    #---Throughput Section---
    # stat_pull_time.insert(0, 0)
    # throughput_time.insert(0,throughput_time[0])
    # fig, ax = plt.subplots()
    # baseline_label = mlines.Line2D([],[], color='#FFD801', label='branch')
    # ax.legend(handles=[baseline_label])
    
    # plt.rcParams.update({'font.size': 10})
    # plt.plot(stat_pull_time, throughput_time, c='#FFD801')
    # plt.xlim([0,24])
    # # plt.ylim([min(throughput_time) -0.01, max(throughput_time)+0.01])
    # # plt.yticks(np.arange(min(throughput_time),max(throughput_time),0.0025))
    # plt.xticks(np.arange(0,25,1))
    # plt.ylabel('Throughput Time (Seconds)')
    # plt.xlabel('Time (Hours)')
    # plt.show()
    #---End throughput section---
    # stat_pull_time.insert(0, 0)
    stat_pull_time.append(24)
    iter_count.insert(0,iter_count[0])
    fig, ax = plt.subplots()
    baseline_label = mlines.Line2D([],[], color='#DC143C', label='branch')
    ax.legend(handles=[baseline_label])
    
    plt.rcParams.update({'font.size': 10})
    plt.plot(stat_pull_time, iter_count, c='#DC143C')
    plt.xlim([0,24])
    plt.ylim([33, max(iter_count)+1])
    # plt.yticks(np.arange(min(throughput_time),max(throughput_time),0.0025))
    plt.xticks(np.arange(0,25,1))
    plt.ylabel('Test Cases Executed Per Second')
    plt.xlabel('Time (Hours)')
    plt.show()


if __name__ =='__main__':
    main()
