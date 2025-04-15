# import re
# from datetime import datetime, timedelta

# # Load log file
# with open('feb_19', 'r') as file:
#     logs = file.readlines()

# # Define regex patterns for time extraction
# start_time_pattern = re.compile(r"Time of start = (\d{2}/\d{2}/\d{4} \d{2}:\d{2}:\d{2})")
# coverage_increase_pattern = re.compile(r"Found coverage-increasing input\.")
# current_time_pattern = re.compile(r"DSLOG: Current time: (\d{2}/\d{2}/\d{4} \d{2}:\d{2}:\d{2})")
# coverage_points_pattern = re.compile(r"Found (\d+) new coverage\.")

# start_time = None
# coverage_data = []

# # Scan log for timestamps and coverage points
# for i, line in enumerate(logs):
#     # Check for the start time
#     start_match = start_time_pattern.search(line)
#     if start_match:
#         start_time = datetime.strptime(start_match.group(1), "%d/%m/%Y %H:%M:%S")
#         print(f"Start time found: {start_time}")

#     # Check for coverage increase
#     coverage_match = coverage_increase_pattern.search(line)
#     if coverage_match:
#         # Check for the current time on the next line
#         if i + 1 < len(logs):
#             current_time_match = current_time_pattern.search(logs[i + 1])
#             if current_time_match:
#                 timestamp = datetime.strptime(current_time_match.group(1), "%d/%m/%Y %H:%M:%S")
#                 print(f"Coverage increase found at: {timestamp}")

#                 # Check for coverage points in subsequent lines
#                 points_found = 0
#                 for j in range(i + 2, len(logs)):
#                     coverage_points_match = coverage_points_pattern.search(logs[j])
#                     if coverage_points_match:
#                         points_found = int(coverage_points_match.group(1))
#                         break  # Exit the loop after finding coverage points

#                 if start_time and timestamp <= start_time + timedelta(hours=24):  # Check within 24-hour window
#                     coverage_data.append((timestamp, points_found))

# # Output extracted times and coverage points
# print("Coverage-Increasing Times and Points Found (within 24 hours):")
# if coverage_data:
#     for time, points in coverage_data:
#         print(f"Time: {time}, Points Found: {points}")
# else:
#     print("No coverage-increasing times found within the specified window.")
import re
from datetime import datetime

# Load log file
with open('feb_21', 'r') as file:
    logs = file.readlines()

# Define regex patterns for time extraction
start_time_pattern = re.compile(r"Time of start = (\d{2}/\d{2}/\d{4} \d{2}:\d{2}:\d{2})")
coverage_increase_pattern = re.compile(r"Found coverage-increasing input\.")
current_time_pattern = re.compile(r"DSLOG: Current time: (\d{2}/\d{2}/\d{4} \d{2}:\d{2}:\d{2})")
coverage_points_pattern = re.compile(r"Found (\d+) new coverage.")

start_time = None
pace_time = []
pace_bb = []
total_coverage_points = 0  # Cumulative total of coverage points

# Scan log for timestamps and coverage points
for i, line in enumerate(logs):
    # Check for the start time
    start_match = start_time_pattern.search(line)
    if start_match:
        start_time = datetime.strptime(start_match.group(1), "%d/%m/%Y %H:%M:%S")
        print(f"Start time found: {start_time}")

    # Check for coverage increase
    coverage_match = coverage_increase_pattern.search(line)
    if coverage_match:
        # Check for the current time on the next line
        if i + 1 < len(logs):
            current_time_match = current_time_pattern.search(logs[i + 1])
            if current_time_match:
                timestamp = datetime.strptime(current_time_match.group(1), "%d/%m/%Y %H:%M:%S")
                print(f"Coverage increase found at: {timestamp}")

                # Calculate the time as a fraction of 24 hours in hours
                time_fraction_hours = (timestamp - start_time).total_seconds() / 3600  # Convert seconds to hours

                # Check for coverage points in subsequent lines
                points_found = 0
                for j in range(i + 2, len(logs)):
                    coverage_points_match = coverage_points_pattern.search(logs[j])
                    if coverage_points_match:
                        points_found = int(coverage_points_match.group(1))
                        total_coverage_points += points_found  # Update total coverage points
                        break  # Exit the loop after finding coverage points

                if start_time and 0 <= time_fraction_hours <= 24:  # Check within 24-hour window
                    pace_time.append(time_fraction_hours)  # Append time in hours
                    pace_bb.append(total_coverage_points)  # Append cumulative coverage points

# Output extracted times and coverage points in the specified format
print(f"pace_time = {pace_time}")
print(f"pace_bb = {pace_bb}")