import numpy as np
import matplotlib.pyplot as plt

# Data
categories = ['imgproc', 'machinev', 'telecom', 'sonar', 'pace', 'branch']
crash_reload = [2.0, 0.0, 1.9, 0.0, 0.0, 2.0]
fuzzer_loading = [1.4, 0.3, 0.25, 0.2, 0.25, 0.4]
coverage_tracing = [0.1, 0.05, 0.1, 0.07, 0.08, 0.05]
local_pool_loading = [0.05, 0.03, 0.04, 0.02, 0.03, 0.02]

bar_width = 0.6
x = np.arange(len(categories))

# Plot bars
plt.bar(x, crash_reload, width=bar_width, label='Crash Reload', color='skyblue')
plt.bar(x, fuzzer_loading, width=bar_width, label='Fuzzer Loading', color='darkgreen', bottom=crash_reload)
plt.bar(x, coverage_tracing, width=bar_width, label='Coverage Tracing', color='brown', bottom=np.array(crash_reload) + np.array(fuzzer_loading))
plt.bar(x, local_pool_loading, width=bar_width, label='Local Pool Loading', color='purple', bottom=np.array(crash_reload) + np.array(fuzzer_loading) + np.array(coverage_tracing))

# Labels and formatting
plt.ylabel('Overhead (seconds)')
plt.xticks(x, categories, rotation=30)
plt.legend()

# Show the plot
plt.show()