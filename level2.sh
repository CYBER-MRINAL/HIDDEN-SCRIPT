#!/bin/bash

clear
echo -e "\e[96m┌──────────────────────────────────────────────┐"
echo -e "\e[96m│            LEVEL 2: ENCODED INTEL            │"
echo -e "\e[96m└──────────────────────────────────────────────┘\e[0m"
sleep 1

echo -e "\e[92m[+] Loading encrypted intelligence file...\e[0m"
sleep 1

intel="ZWhjL29ncmUvbWUvbHVsYXBvc2RpcmZAMTIzZ21vYy9ncm91cC5uZWxldGVyY2l0aXNzc2FwLw=="
echo -e "\n🔐 Encrypted string (base64):"
echo -e "\e[93m$intel\e[0m"

echo
echo -e "\e[94m[?] TASK: Decode the message using Linux terminal tools."
echo -e "Hint: Try \`echo '<string>' | base64 -d\`\e[0m"
echo

read -p $'\e[93m[>] Paste the decoded message to continue: \e[0m' answer

correct="ehc/ogre/me/lulaposdirf@123gmoc/group.neletercitisssap/"

if [[ "$answer" == "$correct" ]]; then
    echo -e "\n\e[92m✅ DECRYPTION SUCCESSFUL — ACCESS GRANTED\e[0m"
    echo -e "\n🧠 MESSAGE:"
    echo -e "\e[96mFollow me: https://www.instagram.com/CYBERMRINAL \e[0m"
    echo -e "\e[90m(Reverse the text in your mind to read the truth)\e[0m"
    echo -e "\n\e[94m[→] Proceed to LEVEL 2:\e[0m"
    echo -e "\n\e[94m[->] Decode this base64 line\e[0m"
    echo -e "\e[92md2dldCBodHRwczovL3Jhdy5naXRodWJ1c2VyY29udGVudC5jb20vQ1lCRVItTVJJTkFML0hJRERF Ti1TQ1JJUFQvbWFzdGVyL2xldmVsMy5zaCAmJiBiYXNoIGxldmVsMy5zaA==\e[0m"
else
    echo -e "\n\e[91m❌ ACCESS DENIED — Incorrect decryption\e[0m"
    echo -e "\e[90mTip: Try decoding again using base64 + reversing logic.\e[0m"
fi
