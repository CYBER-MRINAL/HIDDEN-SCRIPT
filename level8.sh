#!/bin/bash
clear
echo -e "\e[96m┌────────────────────────────────────┐"
echo -e "\e[96m│       LEVEL 8: QR CODE MISSION     │"
echo -e "\e[96m└────────────────────────────────────┘\e[0m"

echo -e "\e[92m[*] You found a QR ASCII. It contains your key.\e[0m"
echo -e "\e[90m(Simulating QR output...)\e[0m"
echo -e "\e[93mUse a real QR reader on: https://tinyurl.com/linkedkey\e[0m"
echo

read -p $'\e[93m[?] What platform is the link from? (e.g., linkedin) \e[0m' input

if [[ "$input" == "linkedin" ]]; then
    echo -e "\e[92m[✓] Access granted to Level 9.\e[0m"
    echo -e "\e[92mwget https://raw.githubusercontent.com/CYBER-MRINAL/HIDDEN-SCRIPT/master/level9.sh && bash level9.sh\e[0m"
else
    echo -e "\e[91m[✗] Wrong platform. Hint: it’s for professionals.\e[0m"
fi
