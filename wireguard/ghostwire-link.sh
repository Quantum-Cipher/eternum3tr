#!/bin/bash
# Quantum-Cipher Ghostwire Sentinel Link

# Start Ghostwire Sentinel if not already running
if ! pgrep -f ghostwire-sentinel.sh > /dev/null; then
  echo "[⚙️] Launching Ghostwire Sentinel..."
  nohup ~/ghostwire-sentinel.sh >> ~/whisper-logs/ghostwire.log 2>&1 &
else
  echo "[🛡️] Ghostwire Sentinel already active."
fi
