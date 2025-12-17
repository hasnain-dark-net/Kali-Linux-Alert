#!/bin/bash
# Professional Kali Linux Login Alert via NTFY

USER=$(whoami)
HOST=$(hostname)
DATE=$(date '+%Y-%m-%d %H:%M:%S')

# Title for notification
TITLE="🔐 Kali Linux Login Alert"

# Message body
MESSAGE="User: $USER
System: $HOST
Time: $DATE"

# Send professional notification
curl -s -d "$MESSAGE" \
     -H "Title: $TITLE" \
     -H "Priority: high" \
     https://ntfy.sh/kali-login
