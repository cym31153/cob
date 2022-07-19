#!/bin/sh
cat <<'TEXT' > /etc/systemd/system/check_oracle_bot.service
[Unit]
Description=check_oracle_bot telegram utility daemon
After=network.target

[Install]
WantedBy=multi-user.target

[Service]
Type=simple
WorkingDirectory=/opt/bot/cob
ExecStart=/usr/bin/python3 main.py
Restart=always
