#!/bin/bash

# Baby Cloud RHEL Setup Script
# Initial environment preperation

echo "Updating system...."
sudo dnf update -y

echo "Installing useful tools...."
sudo dnf install -y git vim curl wget

echo "Installing container tools...."
sudo dnf install -y podman buildah

echo "Setup complete."
