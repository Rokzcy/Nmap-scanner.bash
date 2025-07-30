#!/bin/bash

# Simple Nmap Port Scanner Script

# Check if Nmap is installed
if ! command -v nmap &> /dev/null; then
    echo "[!] Nmap is not installed. Please install it and try again."
    exit 1
fi

# Check if user supplied a target
if [ -z "$1" ]; then
    echo "Usage: $0 <target-ip-or-hostname>"
    exit 1
fi

TARGET="$1"
echo "[*] Scanning target: $TARGET"
echo "[*] Starting Nmap scan..."

# Run Nmap scan (basic TCP scan on common ports)
nmap -sS -Pn -T4 "$TARGET"

echo "[*] Scan complete."
