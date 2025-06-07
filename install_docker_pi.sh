#!/bin/bash

echo "🌌 Initializing Docker install for Raspberry Pi..."

# Update and upgrade system packages
echo "📦 Updating packages..."
sudo apt update && sudo apt upgrade -y

# Install Docker using the official convenience script
echo "🐳 Installing Docker..."
curl -sSL https://get.docker.com | sh

# Add current user to docker group for non-sudo access
echo "👤 Adding user '$USER' to Docker group..."
sudo usermod -aG docker $USER

# Optional: Install Docker Compose
read -p "Would you like to install Docker Compose? (y/n): " install_compose
if [[ "$install_compose" =~ ^[Yy]$ ]]; then
    echo "🔧 Installing Docker Compose..."
    sudo apt install docker-compose -y
fi

echo "✅ Docker installed. You may need to log out and back in, or reboot."
echo "🔁 Reboot now? (y/n): "
read reboot_now
if [[ "$reboot_now" =~ ^[Yy]$ ]]; then
    sudo reboot
else
    echo "🎉 All done! Run: 'docker run hello-world' after re-login to confirm installation."
fi
