#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Password-Gen
# @raycast.mode inline

# Optional parameters:
# @raycast.icon 🔒

# Documentation:
# @raycast.description Password-Generator
# @raycast.author Dominic Clarke
# @raycast.authorURL https://raycast.com/dominic_clarke

source ../password-generator/passphrase-generator.zsh;

passwordGen | tee >(pbcopy)

