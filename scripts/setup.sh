#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Define color variables
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${GREEN}Setting up the project...${NC}"
echo # Empty line

# Use the Node.js version specified in .nvmrc
echo -e "${YELLOW}1. Switching to the Node.js version specified in .nvmrc...${NC}"
echo # Empty line

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

nvm install
nvm use

# Install project dependencies
echo # Empty line
echo -e "${YELLOW}2. Installing dependencies...${NC}"
npm install

echo # Empty line
echo -e "${GREEN}Project setup complete 🎉🎉🎉!${NC}"
echo # Empty line