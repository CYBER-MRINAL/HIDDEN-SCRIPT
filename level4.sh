#!/bin/bash
clear
echo -e "\e[96m┌──────────────────────────────────────┐"
echo -e "\e[96m│          LEVEL 4: LEAKED HASHES      │"
echo -e "\e[96m└──────────────────────────────────────┘\e[0m"
sleep 1

echo -e "\e[93m[!] ALERT: A partial password dump has been found.\e[0m"
echo -e "\e[92m[*] Objective: Identify the only usable credential.\e[0m"
echo

cat << EOF
#===[LEAKED DATA]===
admin:x:$6$abc$HACKME12345...
john:x:$6$efg$somegarbage...
cybermrinal:x:$6$xyz$HACK4DHARMA...
EOF

echo
read -p $'\e[93m[?] Enter the valid username based on OSINT match: \e[0m' input
if [[ "$input" == "cybermrinal" ]]; then
    echo -e "\e[92m[✓] Correct! Proceed to next level.\e[0m"
    echo -e "\e[94m[->] Decrypt this base64 line\e[0m"
    echo -e "\e[92md2dldCBodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vQ1lCRVItTVJJTkFML0hJRERF Ti1TQ1JJUFQvbWFzdGVyL2xldmVsNS5zaCAmJiBiYXNoIGxldmVsNS5zaA==\e[0m"
else
    echo -e "\e[91m[✗] Wrong username. Try harder.\e[0m"
fi
