#!/bin/bash

clear
echo -e "\e[96m┌──────────────────────────────────────────────┐"
echo -e "\e[96m│            LEVEL 3: HEX INTELLIGENCE         │"
echo -e "\e[96m└──────────────────────────────────────────────┘\e[0m"
sleep 1

echo -e "\e[92m[+] Uploading covert hex sequence to buffer...\e[0m"
sleep 1

hex_payload="68747470733a2f2f7777772e6c696e6b6564696e2e636f6d2f696e2f43594245524d52494e414c"

echo -e "\n📦 Hex Encoded Payload:"
echo -e "\e[93m$hex_payload\e[0m"

echo
echo -e "\e[94m[?] TASK: Decode this hex string to reveal the secure communication channel."
echo -e "Hint: Try \`echo <hex> | xxd -r -p\` or use \`xxd\` utilities.\e[0m"
echo

read -p $'\e[93m[>] Paste the decoded URL: \e[0m' input

expected="https://www.linkedin.com/in/CYBERMRINAL"

if [[ "$input" == "$expected" ]]; then
    echo -e "\n\e[92m✅ ACCESS GRANTED — LEVEL 3 CLEARED\e[0m"
    echo -e "\n🔗 CONNECT SECURELY:"
    echo -e "\e[96m$expected\e[0m"
    echo -e "\e[90m(Only the worthy reach this far)\e[0m"
    echo -e "\e[94m[->] Docode this base64 line \e[0m"
    echo -e "\e[92md2dldCBodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vQ1lCRVItTVJJTkFML0hJRERF Ti1TQ1JJUFQvbWFzdGVyL2xldmVsNC5zaCAmJiBiYXNoIGxldmVsNC5zaA==\e[0m"
else
    echo -e "\n\e[91m❌ ACCESS DENIED — Incorrect decryption\e[0m"
    echo -e "\e[90m> Hint: Use \`xxd -r -p\` or convert hex using terminal methods.\e[0m"
fi
