#!/bin/bash

# Detect OS/Distribution
if [ -f /etc/os-release ]; then
    . /etc/os-release
    OS=$NAME
else
    echo "Cannot determine OS or Distribution. Exiting..."
    exit 1
fi

install_deps_ubuntu_debian() {
    sudo apt-get update
    sudo apt-get install -y ninja-build gettext cmake unzip curl
}

install_deps_centos_rhel_fedora() {
    sudo dnf -y install ninja-build cmake gcc make unzip gettext curl
}

# Install dependencies based on the detected OS/Distribution
case $OS in
    "Ubuntu"|"Debian GNU/Linux" | "Raspbian GNU/Linux")
        install_deps_ubuntu_debian
        ;;
    "CentOS Linux"|"Red Hat Enterprise Linux"|"Fedora")
        install_deps_centos_rhel_fedora
        ;;
    *)
        echo "OS/Distribution not supported. Exiting..."
        exit 1
        ;;
esac

# Clone Neovim repository
git clone https://github.com/neovim/neovim.git
cd neovim

# Build and Install
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make install

# Go back to the parent directory
cd ..

# Remove the neovim source directory
sudo rm -rf neovim

echo "Neovim installed successfully!"
