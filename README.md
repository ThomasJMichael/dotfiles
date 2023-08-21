
# My Dotfiles

This repository contains my personal dotfiles and configurations for various tools and applications. It's designed to make setting up a new system quick and painless.

## Getting Started

1. **Clone the Repository**:

   ```bash
   git clone https://github.com/thomasjmichael/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```

2. **Bootstrap Configuration**:

   The `bootstrap.sh` script will set up your environment by linking configurations and setting up necessary tools.

   ```bash
   ./bootstrap.sh
   ```

   If you also want to install Neovim from source, use:

   ```bash
   ./bootstrap.sh --install-neovim
   ```

3. **Manual Configuration**:

   Some configurations might need manual tweaks, depending on the system or personal preferences. These are documented below:
   - None currently

## Contents

- **Neovim**: Configuration files for Neovim, along with a script to install it from source.

## Additional Scripts

- `install_neovim.sh`: This script installs Neovim from source. It's also called by the bootstrap script if `--install-neovim` is provided.