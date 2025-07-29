#!/bin/bash
clear
echo -e "\e[96m┌────────────────────────────────────┐"
echo -e "\e[96m│       LEVEL 7: SYSLOG ANALYSIS     │"
echo -e "\e[96m└────────────────────────────────────┘\e[0m"

echo -e "\e[92m[*] Review suspicious syslog entries:\e[0m"
log="Jun 10 02:13:44 systemd: Session 123 of user admin.
Jun 10 02:13:47 sshd: Accepted password for cybermrinal from 10.10.10.10"

echo -e "\e[93m$log\e[0m"
echo

read -p $'\e[93m[?] What IP did the attacker use? \e[0m' ip

if [[ "$ip" == "10.10.10.10" ]]; then
    echo -e "\e[92m[✓] Correct. Proceed to Level 8.\e[0m"
    echo -e "\e[94m[->] Decrypt this base64 line\3e[0m"
    echo -e "\e[92md2dldCBodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vQ1lCRVItTVJJTkFML0hJRERF Ti1TQ1JJUFQvbWFzdGVyL2xldmVsOC5zaCAmJiBiYXNoIGxldmVsOC5zaA==\e[0m"
else
    echo -e "\e[91m[✗] Incorrect. Re-read logs.\e[0m"
fi
