#!/bin/bash
# uninstall-desktop.sh
set -v  # shows commands during execution

echo "--- 1. Stop and remove Minikube ---"
# Delete existing instances and their data
minikube delete --all --purge || true

# Remove Minikube binary (installed via dpkg)
sudo apt-get purge -y minikube || true

# Delete local configuration folders
rm -rf ~/.minikube ~/.kube


echo "--- 2. Uninstall Helm ---"
# Helm-Paket entfernen
sudo apt-get purge -y helm || true

# Delete Helm repository and keyrings
sudo rm -f /etc/apt/sources.list.d/helm-stable-debian.list
sudo rm -f /usr/share/keyrings/helm.gpg
rm -rf ~/.config/helm ~/.cache/helm ~/.local/share/helm


echo "--- 3. Completely remove Docker & Containerd ---"
# Laufende Container stoppen
sudo docker stop $(sudo docker ps -aq) 2>/dev/null || true

# Remove Docker packages and plugins completely (purge also removes configs)
sudo apt-get purge -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin docker-ce-rootless-extras || true

# Delete Docker repository and keyrings
sudo rm -f /etc/apt/sources.list.d/docker.list
sudo rm -f /etc/apt/keyrings/docker.gpg

# Delete leftover files, networks, volumes, and images
sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd
sudo rm -rf /etc/docker
sudo rm -f /var/run/docker.sock


echo "--- 4. System cleanup ---"
# Remove unnecessary dependencies created by the deletion
sudo apt-get autoremove -y
sudo apt-get autoclean -y
sudo apt-get update


echo "✨ System is clean! You can now start the 'install-jetson.sh' script again."