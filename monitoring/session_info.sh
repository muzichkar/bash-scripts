#!/bin/bash

echo "👤 Username: $(whoami)"
echo "🆔 UID: $(id -u)"
echo "🆔 GID: $(id -g)"
echo "🧑‍🤝‍🧑 Groups: $(groups)"
echo "⏱️ Uptime: $(uptime -p)"
echo "🖥️ Hostname: $(hostname)"
echo "🧬 Kernel: $(uname -r)"
