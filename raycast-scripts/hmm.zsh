#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Uptime - v2
# @raycast.mode inline
# @raycast.refreshTime 60s

# Optional parameters:
# @raycast.icon 🤖

# Documentation:
# @raycast.description Uptime
# @raycast.author Dominic Clarke
# @raycast.authorURL https://raycast.com/dominic_clarke

system_profiler SPSoftwareDataType -detailLevel mini

