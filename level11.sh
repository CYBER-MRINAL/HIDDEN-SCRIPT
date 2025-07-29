#!/bin/bash
clear
echo -e "\e[96m┌──────────────────────────────────────┐"
echo -e "\e[96m│ LEVEL 11: Simple ROT13 Challenge     │"
echo -e "\e[96m└──────────────────────────────────────┘\e[0m"
echo
echo -e "\e[92m[*] Challenge: Simple ROT13 Challenge.\e[0m"
echo -e "\e[92m[*] What is the main purpose of blue teamer ?\e[0m"
echo
read -p $'\e[93m[>] Enter dummy code to continue (use your logic): \e[0m' input

if [[ "$input" == "security" ]]; then
    echo -e "\e[92m[✓] Challenge passed. Proceeding...\e[0m"
    echo -e "\e[96mbash level$((i+1)).sh\e[0m"
    echo -e "\e[94m[->] Decrypt this base64 line\e[0m"
    echo -e "\e[92md2dldCBodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vQ1lCRVItTVJJTkFML0hJRERF Ti1TQ1JJUFQvbWFzdGVyL2xldmVsMTIuc2ggJiYgYmFzaCBsZXZlbDEyLnNo\e[0m"
else
    echo -e "\e[91m[✗] Wrong answer. Think like a hacker.\e[0m"
fi
