#!/bin/bash

# Update and install necessary dependencies
sudo apt update
sudo apt install -y curl git docker.io

# Install Node.js
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt install -y nodejs

# Clone the repository
git clone https://github.com/indiansinrichmondbc/codex.git
cd codex

# Build the Docker container
./codex-cli/scripts/build_container.sh

# Start the application in the container
./codex-cli/scripts/run_in_container.sh
