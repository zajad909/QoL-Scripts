# Import Word Database CSV
$WordDB = Import-Csv -path /Users/dom.clarke/Development/password-generator/database/WordDB.csv

# Select a random word from each column
$word1 = $WordDB | Get-Random | Select-Object -ExpandProperty Colours
$word2 = $WordDB | Get-Random | Select-Object -ExpandProperty Animals
$word3 = $WordDB | Get-Random | Select-Object -ExpandProperty Nouns

# Combine the random words to create a password
$Combinedword = "$word1$word2$word3"

# Generate Number
$Number = "{0:d2}" -f (Get-Random -Minimum 1 -Maximum 99)

# Generate Special
$Special = [char[]]"@#$!%&?" | Get-Random

$password = $Combinedword+$Number+$Special

# Output the generated password
Write-Output "The password is: $password - Take note of this password to provide to the user"