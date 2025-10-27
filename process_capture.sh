#!/bin/bash

# Log file directory
LOG_DIR="/var/log/process-capture"
mkdir -p "$LOG_DIR"

# Output file with timestamp
OUTPUT_FILE="$LOG_DIR/process_$(date +"%Y%m%d_%H%M%S").log"

echo "Process capture started at $(date)" >> "$OUTPUT_FILE"
ps aux >> "$OUTPUT_FILE"
echo "Process capture completed at $(date)" >> "$OUTPUT_FILE"

