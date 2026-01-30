#!/bin/zsh
function getUptime() {
boot_time=$(sysctl -n kern.boottime | awk -F'[=,]' '{print $2}' | tr -d ' ')

current_time=$(date +%s)

uptime_seconds=$((current_time - boot_time))

days=$((uptime_seconds / 86400))
hours=$(((uptime_seconds % 86400) / 3600))
minutes=$(((uptime_seconds % 3600) / 60))

echo "${days} days, ${hours} hours, ${minutes} minutes"
}