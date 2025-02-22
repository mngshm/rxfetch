#!/usr/bin/env bash

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}Installing rxfetch...${NC}"

# Check if running as root when not in Termux
if [ -z "$TERMUX_VERSION" ] && [ "$EUID" -ne 0 ]; then 
    echo -e "${RED}Please run as root${NC}"
    exit 1
fi

# Detect package manager
if command -v pacman &>/dev/null; then
    PKG_MANAGER="pacman"
elif command -v apt &>/dev/null; then
    PKG_MANAGER="apt"
elif command -v pkg &>/dev/null; then
    PKG_MANAGER="pkg"
fi

# Install fonts if not in Termux
if [ -z "$TERMUX_VERSION" ]; then
    echo -e "${BLUE}Installing required fonts...${NC}"
    if [ "$PKG_MANAGER" = "pacman" ]; then
        pacman -S --noconfirm ttf-material-design-icons
    else
        FONT_DIR="$HOME/.local/share/fonts"
        mkdir -p "$FONT_DIR"
        cp ttf-material-design-icons/* "$FONT_DIR/" 2>/dev/null
        fc-cache -fv
    fi
fi

# Install rxfetch
echo -e "${BLUE}Installing rxfetch to system...${NC}"
if [ -n "$TERMUX_VERSION" ]; then
    cp rxfetch $PREFIX/bin/
    chmod +x $PREFIX/bin/rxfetch
else
    cp rxfetch /usr/local/bin/
    chmod +x /usr/local/bin/rxfetch
fi

echo -e "${GREEN}rxfetch has been installed successfully!${NC}"
echo -e "Run ${BLUE}rxfetch${NC} to try it out!"
