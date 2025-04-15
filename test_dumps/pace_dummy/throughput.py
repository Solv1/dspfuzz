# import re
# import matplotlib.pyplot as plt
# import numpy as np

# def process_log_file(file_path):
#     # Regular expressions to extract data
#     total_time_pattern = re.compile(r"Total Time for fuzzer ([\d\.]+)s")
#     iter_pattern = re.compile(r"Total number of iterations (\d+)")

#     total_times = []
#     iterations = []

#     # Read file and extract values
#     with open(file_path, "r") as file:
#         for line in file:
#             total_time_match = total_time_pattern.search(line)
#             iter_match = iter_pattern.search(line)

#             if total_time_match:
#                 total_times.append(float(total_time_match.group(1)))

#             if iter_match:
#                 iterations.append(int(iter_match.group(1)))

#     # Convert total time into hours within a 24-hour period
#     total_times_hours = [t / 3600 for t in total_times]  # Convert seconds to hours
#     total_times_24hr = [t % 24 for t in total_times_hours]  # Map into a 24-hour range

#     # Compute iterations per second
#     iterations_per_second = [
#         iters / time if time > 0 else 0 for iters, time in zip(iterations, total_times)
#     ]

#     # Ensure data is sorted correctly by total time
#     sorted_data = sorted(zip(total_times_24hr, iterations_per_second))
#     total_times_24hr_sorted, iterations_per_second_sorted = zip(*sorted_data)

#     print(total_times_24hr_sorted, iterations_per_second_sorted)

#     return total_times_24hr_sorted, iterations_per_second_sorted

# def plot_data(total_times_24hr, iterations_per_second):
#     plt.figure(figsize=(10, 5))
#     plt.plot(total_times_24hr, iterations_per_second, color="b", label="Blackbox")

#     plt.xlabel("Hours")
#     plt.ylabel("Test Cases per Second")

#     # Use log scale for X-axis
#     plt.xscale("log")
#     plt.yticks(np.arange(0, 6, 0.2),)
#     # Set log-scaled ticks properly (avoid log(0))
#     min_time = max(min(total_times_24hr), 0.1)  # Ensure nonzero min value
#     plt.xlim(min_time, 24)  # Limit to a 24-hour range

#     # Customize X-axis ticks (log-based scale)
#     xticks = np.logspace(np.log10(min_time), np.log10(24), num=6)
#     plt.xticks(xticks, [f"{x:.1f}" for x in xticks])

#     # Make grid lines visible
#     plt.grid(True, linestyle="--", alpha=0.6, which="both")

#     plt.legend()
#     plt.show()


# # Example usage
# file_path = "march_3rd.txt"  # Change this to your actual log file path
# timestamps, iterations_per_second = process_log_file(file_path)
# plot_data(timestamps, iterations_per_second)
import re
import matplotlib.pyplot as plt
import numpy as np
from datetime import datetime

def process_log_file(file_path):
    # Regular expressions to extract data
    start_time_pattern = re.compile(r"Time of start = (\d+)/(\d+)/(\d+) (\d+):(\d+):(\d+)")
    current_time_pattern = re.compile(r"Current time: (\d+)/(\d+)/(\d+) (\d+):(\d+):(\d+)")
    throughput_pattern = re.compile(r"Average throughput time: ([\d\.]+)")

    start_time = None
    timestamps = []
    tc_per_sec = []

    # Read file and extract values
    with open(file_path, "r") as file:
        for line in file:
            # Capture start time
            start_match = start_time_pattern.search(line)
            if start_match:
                start_time = datetime(
                    year=int(start_match.group(3)),
                    month=int(start_match.group(2)),
                    day=int(start_match.group(1)),
                    hour=int(start_match.group(4)),
                    minute=int(start_match.group(5)),
                    second=int(start_match.group(6))
                )

            # Capture current time
            current_match = current_time_pattern.search(line)
            if current_match and start_time:
                curr_time = datetime(
                    year=int(current_match.group(3)),
                    month=int(current_match.group(2)),
                    day=int(current_match.group(1)),
                    hour=int(current_match.group(4)),
                    minute=int(current_match.group(5)),
                    second=int(current_match.group(6))
                )
                elapsed_hours = (curr_time - start_time).total_seconds() / 3600  # Convert to hours

            # Capture throughput (TC/s)
            throughput_match = throughput_pattern.search(line)
            if throughput_match and start_time:
                throughput_time = float(throughput_match.group(1))
                if throughput_time > 0:
                    tc_per_sec.append(1 / throughput_time)  # Compute test cases per second
                    timestamps.append(elapsed_hours)

    # Filter data to keep only points every ~20 minutes
    filtered_timestamps = []
    filtered_tc_per_sec = []
    last_selected_time = -float("inf")  # Track the last selected timestamp

    for i in range(len(timestamps)):
        if timestamps[i] - last_selected_time >= 10 / 60:  # Ensure at least 20 minutes gap
            filtered_timestamps.append(timestamps[i])
            filtered_tc_per_sec.append(tc_per_sec[i])
            last_selected_time = timestamps[i]  # Update the last selected timestamp
    print(filtered_tc_per_sec, filtered_timestamps)
    print(len(filtered_tc_per_sec))
    print(len(filtered_timestamps))

    return filtered_timestamps, filtered_tc_per_sec

def plot_data(timestamps, tc_per_sec):
    plt.figure(figsize=(10, 5))
    plt.plot(timestamps, tc_per_sec, color="b", linestyle="-", label="Test Cases/s")

    plt.xlabel("Time (Hours)")
    plt.ylabel("Test Cases per Second")
    plt.xscale('log')
    # Display grid and legend
    plt.grid(True, linestyle="--", alpha=0.6)
    plt.legend()
    plt.show()

# Example usage
file_path = "mar9th"  # Change this to your actual log file path
timestamps, tc_per_sec = process_log_file(file_path)
plot_data(timestamps, tc_per_sec)