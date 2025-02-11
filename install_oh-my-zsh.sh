#! /usr/bin/bash


# Make sure important variables exist if not already defined
#
# $USER is defined by login(1) which is not always executed (e.g. containers)
# POSIX: https://pubs.opengroup.org/onlinepubs/009695299/utilities/id.html
USER=${USER:-$(id -u -n)}


# Funktion zur Installation von Oh My Zsh
install_oh_my_zsh() {
    # Pfad zur Oh My Zsh Installation
    export ZSH="/usr/share/oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    export ZSH_CUSTOM="/usr/share/oh-my-zsh/custom"

    if [ ! -d "${ZSH_CUSTOM}/plugins/zsh-syntax-highlighting" ]; then
        git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
    fi

    if [ ! -d "${ZSH_CUSTOM}/plugins/zsh-autosuggestions" ]; then
        git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
    fi
}



setup_shell() {
    # If this user's login shell is already "zsh", do not attempt to switch.
    if [ "$(basename -- "$SHELL")" = "zsh" ]; then
        return
    fi
    # Prompt for user choice on changing the default login shell
    printf '%sDo you want to change your default shell to zsh? [Y/n]%s '
    read -r opt
    case $opt in
        y*|Y*|"") ;;
        n*|N*) echo "Shell change skipped."; return ;;
        *) echo "Invalid choice. Shell change skipped."; return ;;
    esac

    chsh -s /usr/bin/zsh  "$USER"

     # Check if the shell change was successful
     if [ $? -ne 0 ]; then
        fmt_error "chsh command unsuccessful. Change your default shell manually."
    else
        export SHELL="$zsh"
        echo "${FMT_GREEN}Shell successfully changed to '$zsh'.${FMT_RESET}"
    fi

    echo
}


setup_links() {
    echo "Setup symbolic links to stephans dotfiles..."
    # link my themes into custom dir
    sudo ln -s -i /home/stephan/dotfiles/zsh/oh-my-zsh/custom/themes/* /usr/share/oh-my-zsh/custom/themes

    # Link .zshrc files
    ln -s -i /home/stephan/dotfiles/zsh/zshrc /home/stephan/.zshrc
    sudo ln -s -i /home/stephan/dotfiles/zsh/zshrc-root /root/.zshrc
}


# Temporär zu root wechseln und die Installation durchführen
sudo bash -c "$(declare -f install_oh_my_zsh); install_oh_my_zsh"

setup_shell
setup_links


exit 0 

