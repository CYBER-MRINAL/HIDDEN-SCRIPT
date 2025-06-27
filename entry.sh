#!/bin/bash

clear
echo -e "\e[96m┌────────────────────────────────────┐"
echo -e "\e[96m│      TERMINAL HACKER CHALLENGE     │"
echo -e "\e[96m└────────────────────────────────────┘\e[0m"
sleep 1

echo -e "\e[94m[~] INITIATING PROTOCOL SEQUENCE...\e[0m"
sleep 1
echo -e "\e[92m[*] SYNCHRONIZING NEURAL INTERFACE... Done\e[0m"
sleep 1
echo -e "\e[92m[*] VERIFYING SYSTEM INTEGRITY....... Passed\e[0m"
sleep 1
echo -e "\e[92m[✓] TOR Network Check: Skipped (Dev Mode)\e[0m"
sleep 1
echo ""

# ✅ Make sure script is interactive
if [[ ! -t 0 ]]; then
    echo -e "\e[91m[✗] ERROR: This script must be run interactively (not with curl | bash).\e[0m"
    echo -e "\e[93m[!] Download the script first:\e[0m"
    echo -e "\e[92mwget https://raw.githubusercontent.com/CYBER-MRINAL/HIDDEN-SCRIPT/master/entry.sh && bash entry.sh\e[0m"
    exit 1
fi

# ✅ PROMPT USER
echo -ne "\e[93m[?] ENTER THE DECRYPTION KEY TO CONTINUE: \e[0m"
read pass

if [[ "$pass" == "HACK4DHARMA" ]]; then
    echo -e "\n\e[92m[✓] ACCESS GRANTED — LEVEL 1 CLEARED\e[0m"
    sleep 1
    echo -e "\n\e[94mDecoding Secure Message...\e[0m"
    sleep 1

    decoded=$(echo "Sm9pbiB1cyBhdCB0aGUgdGVtcGxlIG9mIHRydXRoOiBodHRwczovL3QubWUveHl6cGVhcg==" | base64 -d)

    echo -e "\n\e[92m== DECODED INTEL ==\e[0m"
    echo -e "\e[96m$decoded\e[0m"

    echo -e "\n\e[94m[→] Proceed to LEVEL 2:\e[0m"
    echo -e "\e[92mbash <(curl -s https://raw.githubusercontent.com/CYBER-MRINAL/HIDDEN-SCRIPT/master/level2.sh)\e[0m"
else
    echo -e "\n\e[91m[✗] ACCESS DENIED — INVALID KEY\e[0m"
    echo -e "\e[90m> Hint: The passphrase is hidden in my GitHub profile.\e[0m"
    exit 1
fi
