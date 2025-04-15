import re
from datetime import datetime, timedelta

# Path to your log file
log_file_path = 'feb_24'  # Change this to your log file's path

# Initialize lists to store results
throughput_times = []
test_cases_per_second = []
coverage_times = []

# Open and read the log file
with open(log_file_path, 'r') as file:
    increasing_flag = False
    time_flag = False

    for line in file:
        # Check if the line indicates coverage-increasing input
        if "Found coverage-increasing input." in line:
            # Extract the current time
            increasing_flag = True
            continue

        time_match = re.search(r'Current time: (\d{2}/\d{2}/\d{4} \d{2}:\d{2}:\d{2})', line)

        if time_match and increasing_flag:
            current_time = datetime.strptime(time_match.group(1), '%d/%m/%Y %H:%M:%S')
            # Convert current time to fraction of 24 hours since the start of the test
            start_of_test = datetime.strptime('23/02/2025 08:25:02', '%d/%m/%Y %H:%M:%S')  # Change this if the start time is different
            time_in_hours = (current_time - start_of_test) / timedelta(hours=1)  # Time in hours
            coverage_times.append(time_in_hours)
            increasing_flag = False
            time_flag = True
            continue 
        if time_flag: 
            # Look for the next line that contains the average throughput time
            print(line)
            if 'Average throughput time:' in line:
                print('you are here')
                #throughput_time = float(throughput_match.group(1))
                throughput_time = line.split(': ')[2]
                print(throughput_time)
                throughput_times.append(throughput_time)
                test_cases_per_second.append(1 / float(throughput_time))
                time_flag = False

# Print results
print("Coverage Times (hours):", coverage_times)
# print("Throughput Times:", throughput_times)
print("Test Cases per Second:", test_cases_per_second)


