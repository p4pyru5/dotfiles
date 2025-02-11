#!/bin/bash

# Kategorien und Pakete definieren
CATEGORIES_ORDER=("Basics" "Monitoring" "Security" "Backup" "Networking" "Utilities")
declare -A CATEGORIES=(
    ["Basics"]="wget curl git"
    ["Monitoring"]="htop iftop iotop sysstat"
    ["Security"]="nftables fail2ban"
    ["Backup"]="rsync borgbackup"
    ["Networking"]="bmon net-tools openssh-server dnsutils traceroute"
    ["Utilities"]="vim nano zip unzip tmux"
    )

# Update-Paketlisten
function update_package_list {
    echo "Updating system first..."
    sudo apt-get update
    sudo apt-get upgrade
}

# Funktion zur Installation eines einzelnen Pakets
function install_package {
    local package=$1
    if ! dpkg -l | grep -q "^ii  $package "; then
        echo "Installing $package..."
        sudo apt install -y $package
    else
        echo "$package is already installed."
    fi
}

# Funktion zur Installation einer Kategorie
function install_category {
    local category=$1
    local packages=${CATEGORIES[$category]}

    echo ""
    echo "Do you want to install the entire category '$category'?"
    echo "$packages"
    echo ""
    echo "1) Install all packages in the category*"
    echo "2) Confirm each package"
    echo "3) Skip this category"
    read -rp "Enter your choice (1/2/3, default: 1): " choice

    choice=${choice:-1}  # Default to 1 if user hits enter

    case $choice in
        1)
        for package in $packages; do
            install_package $package
        done
        ;;
        2)
        for package in $packages; do
            read -rp "Do you want to install $package? (Y/n): " confirm
            confirm=${confirm:-"y"}
            if [[ $confirm == "y" || $confirm == "Y" ]]; then
                install_package $package
            fi
        done
        ;;
        3)
        echo "Skipping category '$category'."
        ;;
        *)
        echo "Invalid choice. Skipping category '$category'."
        ;;
    esac
}

# Hauptskript
update_package_list

for category in "${CATEGORIES_ORDER[@]}"; do
    install_category "$category"
done

echo "All selected packages have been installed."
