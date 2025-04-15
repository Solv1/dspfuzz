import re

def parse_log(file_path):
    events = {
        "crash_reload": [],
        "current_seed_to_global_pool": [],
        "refresh_local_pool": [],
        "set_intial_breakpoints": []
    }
    
    patterns = {
        "crash_reload": re.compile(r"DSLOG: Time taken for crash_reload = ([\d.]+)"),
        "current_seed_to_global_pool": re.compile(r"DSLOG: Time taken for current_seed_to_global_pool = ([\d.]+)"),
        "refresh_local_pool": re.compile(r"DSLOG: Time taken for refresh_local_pool = ([\d.]+)"),
        "set_intial_breakpoints": re.compile(r"DSLOG: Time taken for set_intial_breakpoints = ([\d.]+)")
    }

    with open(file_path, "r") as file:
        for line in file:
            for key, pattern in patterns.items():
                match = pattern.search(line)
                if match:
                    events[key].append(float(match.group(1)))

    averages = {key: (sum(values) / len(values) if values else 0) for key, values in events.items()}
    
    return averages

if __name__ == "__main__":
    log_file = "feb_24"  # Change this to your actual log file name
    averages = parse_log(log_file)
    for event, avg in averages.items():
        print(f"Average {event}: {avg:.6f}")