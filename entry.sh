#!/bin/bash

clear
banner() {
cat << "EOF"
:'######::'##:::'##:'########::'########:'########:::::::::::'##::::'##:'########::'####:'##::: ##::::'###::::'##:::::::
'##... ##:. ##:'##:: ##.... ##: ##.....:: ##.... ##:::::::::: ###::'###: ##.... ##:. ##:: ###:: ##:::'## ##::: ##:::::::
 ##:::..:::. ####::: ##:::: ##: ##::::::: ##:::: ##:::::::::: ####'####: ##:::: ##:: ##:: ####: ##::'##:. ##:: ##:::::::
 ##:::::::::. ##:::: ########:: ######::: ########::'#######: ## ### ##: ########::: ##:: ## ## ##:'##:::. ##: ##:::::::
 ##:::::::::: ##:::: ##.... ##: ##...:::: ##.. ##:::........: ##. #: ##: ##.. ##:::: ##:: ##. ####: #########: ##:::::::
 ##::: ##:::: ##:::: ##:::: ##: ##::::::: ##::. ##::::::::::: ##:.:: ##: ##::. ##::: ##:: ##:. ###: ##.... ##: ##:::::::
. ######::::: ##:::: ########:: ########: ##:::. ##:::::::::: ##:::: ##: ##:::. ##:'####: ##::. ##: ##:::: ##: ########:
:......::::::..:::::........:::........::..:::::..:::::::::::..:::::..::..:::::..::....::..::::..::..:::::..::........::
EOF
}
banner
echo
sleep 1
echo -e "\e[92m[~] INITIATING PROTOCOL SEQUENCE...\e[0m"
sleep 1
echo -ne "\e[94m[*] SYNCHRONIZING NEURAL INTERFACE...\e[0m"; sleep 0.5; echo " Done"
echo -ne "\e[94m[*] VERIFYING SYSTEM INTEGRITY.......\e[0m"; sleep 0.5; echo " Passed"
sleep 1

# Optional Tor network check
check_tor() {
    if curl --silent --socks5-hostname 127.0.0.1:9050 https://check.torproject.org | grep -q "Congratulations"; then
        echo -e "\e[92m[✓] TOR Network Detected\e[0m"
    else
        echo -e "\e[91m[✗] TOR Network Not Detected — Continue Anyway\e[0m"
    fi
}

check_tor

echo
read -p $'\e[93m[?] ENTER THE DECRYPTION KEY TO CONTINUE: \e[0m' pass
echo -ne "\nAnalyzing"; for i in {1..5}; do sleep 0.3; echo -n "."; done; echo

# Expected key
secret="HACK4DHARMA"

if [[ "$pass" == "$secret" ]]; then
    echo -e "\n\e[92m[✓] ACCESS GRANTED — LEVEL 1 CLEARED\e[0m"
    sleep 1
    echo -e "\e[96mDecoding Secure Message...\e[0m"
    echo
    sleep 1
    echo "== DECODED INTEL =="
    echo " " 
    echo -e "\e[93m$(echo 'Sm9pbiB1cyBhdCB0aGUgdGVtcGxlIG9mIHRydXRoOiBodHRwczovL3QubWUveHl6cGVhcg==' | base64 -d)\e[0m"
    echo
    echo -e "\e[92m[→] Proceed to LEVEL 2:\e[0m"
    echo -e "\e[96mcurl -s https://raw.githubusercontent.com/CYBER-MRINAL/HIDDEN-SCRIPT/master/level2.sh | bash\e[0m"
else
    echo -e "\n\e[91m[✗] ACCESS DENIED — INVALID KEY\e[0m"
    sleep 1
    echo -e "\e[90m> You may re-attempt after enhancing your OSINT capabilities."
    echo -e "Hint: The key is buried inside my README.\e[0m"
fi
