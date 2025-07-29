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
    echo -e "\e[94m[->] Decrypt this base64 line\e[0m"
    echo -e "\e[92md2dldCBodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vQ1lCRVItTVJJTkFML0hJRERF Ti1TQ1JJUFQvbWFzdGVyL2xldmVsOS5zaCAmJiBiYXNoIGxldmVsOS5zaA==\e[0m"
else
    echo -e "\e[91m[✗] Wrong platform. Hint: it’s for professionals.\e[0m"
fi
