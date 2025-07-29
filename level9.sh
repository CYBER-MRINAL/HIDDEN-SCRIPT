#!/bin/bash
clear
echo -e "\e[96m┌────────────────────────────────────┐"
echo -e "\e[96m│      LEVEL 9: PORT KNOCK PUZZLE    │"
echo -e "\e[96m└────────────────────────────────────┘\e[0m"

echo -e "\e[92m[*] Hidden service unlocks if ports knocked in right order: 8080, 22, 443\e[0m"
echo

read -p $'\e[93m[?] What is the last port in the sequence? \e[0m' p

if [[ "$p" == "443" ]]; then
    echo -e "\e[92m[✓] Port accepted. Final level unlocked.\e[0m"
    echo -e "\e[94m[->] Decrypt this base64 line\e[0m"
    echo -e "\e[92md2dldCBodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vQ1lCRVItTVJJTkFML0hJRERF Ti1TQ1JJUFQvbWFzdGVyL2xldmVsMTAuc2ggJiYgYmFzaCBsZXZlbDEwLnNo\e[0m"
else
    echo -e "\e[91m[✗] Incorrect. Remember how HTTPS works.\e[0m"
fi
