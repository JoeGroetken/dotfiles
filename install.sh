if [[ -N "$1" && "$1" == "link" ]]; then


    cd ~
    git clone https://github.com/groejos/dotfiles .dotfiles
    cd .dotfiles
    ./install $1
    rm -f ~/.vimrc
    ln -s ~/.dotfiles/.vimrc ~/.vimrc

else
    for f in $files; do
    wget https://raw.githubusercontent.com/JoeGroetken/dotfiles/refs/heads/main/$f
    done
fi
