#!/bin/bash

# Default path to your init.lua file
DEFAULT_INIT_LUA_PATH="../nvim/init.lua"

# If an argument is provided, use that as the path instead of the default
INIT_LUA_PATH="${1:-$DEFAULT_INIT_LUA_PATH}"

# Run Neovim in headless mode to check the init.lua file
nvim --headless -c "luafile %" -c "quit" "$INIT_LUA_PATH"

