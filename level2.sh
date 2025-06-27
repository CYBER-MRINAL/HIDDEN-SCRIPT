#!/bin/bash

clear
echo -e "\e[96m[+] LEVEL 2 INITIATED: ADVANCED INTELLIGENCE PUZZLE\e[0m"
sleep 1

file_url="https://raw.githubusercontent.com/CYBER-MRINAL/HIDDEN-SCRIPT/main/mission.enc"
expected_hash="19a4b3df69c4d5f04f627367710aa0c2a2ee0ed12448675563765a4319a5a9cf"

echo "[*] Downloading Encrypted File..."
curl -s -o mission.enc "$file_url"

echo "[*] Verifying File Integrity..."
actual_hash=$(sha256sum mission.enc | awk '{print $1}')

if [[ "$expected_hash" == "$actual_hash" ]]; then
    echo -e "\e[92m[✓] Checksum Valid — Decryption Possible\e[0m"
else
    echo -e "\e[91m[✗] File Integrity Failed — Tampered or Outdated File\e[0m"
    exit 1
fi

echo
echo -e "\e[93mDecrypt this file manually using:\e[0m"
echo -e "\e[96mgpg --output mission.txt --decrypt mission.enc\e[0m"
echo
echo -e "\e[90mIf you succeed, the final access key will be inside mission.txt\e[0m"
