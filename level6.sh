#!/bin/bash
clear
echo -e "\e[96m┌─────────────────────────────────────┐"
echo -e "\e[96m│        LEVEL 6: XOR CHALLENGE       │"
echo -e "\e[96m└─────────────────────────────────────┘\e[0m"

enc="DIF@GC"
key=5

echo -e "\e[92m[*] XOR encrypted string: $enc\e[0m"
echo -e "\e[94mHint: XOR each char with key = 5\e[0m"

read -p $'\e[93m[>] Enter the decrypted string: \e[0m' ans

if [[ "$ans" == "CHATGB" ]]; then
    echo -e "\e[92m[✓] Decryption correct. Continue to Level 7.\e[0m"
    echo -e "\e[92mwget https://raw.githubusercontent.com/CYBER-MRINAL/HIDDEN-SCRIPT/master/level7.sh && bash level7.sh\e[0m"
else
    echo -e "\e[91m[✗] Decryption failed. Try XOR manually.\e[0m"
fi
