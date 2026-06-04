#!/bin/bash

# Simple Subdomain Lookup Script
# Uses assetfinder and httprobe to find live subdomains.

echo "============================================="
echo "   Welcome to the Subdomain Lookup Tool!    "
echo "============================================="

# 1. Ask user for domain
read -p "Enter the domain name (example.com): " domain

# 2. Set output file in current folder
output_file="Subdomains_list.txt"

# 3. Run subdomain enumeration
echo "[*] Finding subdomains for $domain ..."
assetfinder -subs-only $domain | httprobe | sort -u > $output_file

# 4. Show results
echo "[+] Subdomains found:"
cat $output_file

echo "============================================="
echo "[+] Results saved in $(pwd)/$output_file"
echo "============================================="
