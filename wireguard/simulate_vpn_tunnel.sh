#!/bin/bash
echo "[WireGuard] Simulating secure VPN tunnel session..."
echo "🔒 Tunneling via localhost endpoint (127.0.0.1)"
ping -c 3 127.0.0.1 >> ~/whisper-logs/ghostwire_tunnel.log
echo "[✓] Tunnel check complete."

