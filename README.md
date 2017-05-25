# Development environment for Linux machines

A note to myself on recreating my development environment

## Install the essentials
``` bash
sudo apt-get update
sudo apt-get install build-essential cmake exuberant-ctags zsh tmux mc vim htop pv enca parallel tree jq -y
```

## Install miniconda
``` bash
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh && bash ./Miniconda3-latest-Linux-x86_64.sh && rm -rf ./Miniconda3-latest-Linux-x86_64.sh
```

## Get tmux config
``` bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/oroszgy/.tmux/master/install.sh)"
```

## Convifgure vim
``` bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/oroszgy/python-vimrc/master/setup.sh)"
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
```

## Use `oh-my-zsh`
``` bash
# Setup zsh
sh -c "$(curl -fsSL https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh)"
USER=$(whoami)
sudo chsh -s `which zsh` $USER
```

If necssary add the ssh key to the remote server

``` bash
ssh-copy-id $HOSTNAME
```
