#!/usr/bin/env bash
set -e

# directory layout
mkdir -p server
cd server

# if you already have a server jar in the repo, skip download
if [ ! -f paper-1.12.2.jar ]; then
  echo "Downloading Paper/Eagler template (replace with your chosen distro)..."
  # Example: replace with a real release URL or repo artifact
  wget -O paper-server.jar https://github.com/Eaglercraft-Templates/Eaglercraft-Server-Paper/releases/latest/download/paper-eagler.jar || true
fi

# Accept EULA if required (if using vanilla/paper jar)
if [ ! -f eula.txt ]; then
  echo "eula=true" > eula.txt
fi

# start server in foreground (so Codespaces detects the port)
# Adjust Java options as needed
java -Xmx1G -jar paper-server.jar --nogui
