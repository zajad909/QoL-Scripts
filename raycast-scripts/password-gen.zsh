#!/usr/bin/env zsh

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Gen-Pass
# @raycast.mode inline

# Optional parameters:
# @raycast.icon 🔒

# Documentation:
# @raycast.description Password-Generator
# @raycast.author Dominic Clarke
# @raycast.authorURL https://raycast.com/dominic_clarke

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]:-${(%):-%x}}")" && pwd)"
source "${SCRIPT_DIR}/../password-generator/passphrase-generator.zsh"

passwordGen | tee >(pbcopy)

