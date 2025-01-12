#!/bin/bash

# Set threshold percentage (change as needed)
THRESHOLD=80

# Get disk usage percentage for root "/"
DISK_USAGE=$(df / | awk 'NR==2 {print $5}' | sed 's/%//')

# Display current disk usage
echo "Current Disk Usage: $DISK_USAGE%"

# Check if disk usage exceeds threshold
if [[ "$DISK_USAGE" -ge "$THRESHOLD" ]]; then
    echo "🚨 Warning: Disk usage is above $THRESHOLD%! Take action!"
else
    echo "✅ Disk usage is within safe limits."
fi

