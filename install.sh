#!/bin/sh
echo "Installing homebrew"

# Check for Homebrew and install if we don't have it
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh

echo "Installing pipx"

brew install pipx
pipx ensurepath
sudo pipx ensurepath --global # optional to allow pipx actions with --global argument

echo "Installing ansible core"
pipx install ansible-core

echo "Running ansible playbook"
ansible-playbook ./ansible/playbooks/homebrew.yaml
