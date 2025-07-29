#!/bin/bash
clear
echo -e "\e[96m┌────────────────────────────────────┐"
echo -e "\e[96m│          LEVEL 10: FINAL BOSS      │"
echo -e "\e[96m└────────────────────────────────────┘\e[0m"

echo -e "\e[92m[*] All levels cleared. Final check:\e[0m"
#echo -e "\e[93mPassphrase: dharma2025\e[0m"
echo

read -p $'\e[93m[?] Enter final passphrase: \e[0m' p

if [[ "$p" == "dharma2025" ]]; then
    echo -e "\e[92m🎉 YOU ARE WORTHY — CHALLENGE COMPLETE\e[0m"
    echo -e "\e[94m[->] Decrupt this base64 line\e[0m"
    echo -e "\e[92md2dldCBodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vQ1lCRVItTVJJTkFML0hJRERF Ti1TQ1JJUFQvbWFzdGVyL2xldmVsMTEuc2ggJiYgYmFzaCBsZXZlbDExLnNo\e[0m"
else
    echo -e "\e[91m[✗] Incorrect. Restart from Level 1.\e[0m"
fi
