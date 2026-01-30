#!/usr/bin/env zsh
function passwordGen() {
# Get script directory to resolve relative paths (works even when sourced in bash or zsh)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]:-${(%):-%x}}")" && pwd)"
DATABASE_DIR="${SCRIPT_DIR}/database"

# Read JSON arrays
nouns=($(jq -r '.[]' "${DATABASE_DIR}/nouns.json"))
animals=($(jq -r '.[]' "${DATABASE_DIR}/animals.json"))
colours=($(jq -r '.[]' "${DATABASE_DIR}/colours.json"))

# Get random index for each array
randomNounIndex=$((RANDOM % ${#nouns[@]}))
randomAnimalIndex=$((RANDOM % ${#animals[@]}))
randomColourIndex=$((RANDOM % ${#colours[@]}))

# Select random items from each array (0-indexed for bash compatibility)
randomNoun="${nouns[$randomNounIndex]}"
randomAnimal="${animals[$randomAnimalIndex]}"
randomColour="${colours[$randomColourIndex]}"

# Combine the random words to create a password
combinedWord="${randomAnimal}-${randomColour}-${randomNoun}"

# Generate Number (1-999)
number=$((RANDOM % 999 + 1))

# Generate Special character
specialChars='@$!?'
# Split string into array (works in both bash and zsh)
specialCharsArray=()
for ((i=0; i<${#specialChars}; i++)); do
  specialCharsArray+=("${specialChars:$i:1}")
done
specialIndex=$((RANDOM % ${#specialCharsArray[@]}))
special="${specialCharsArray[$specialIndex]}"

# Format password based on special character
if [ "$special" = "@" ]; then
  password="${combinedWord}${special}${number}"
else
  password="${combinedWord}${number}${special}"
fi

# Output the generated password
echo "$password"

}
