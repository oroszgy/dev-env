# Development environment for Linux machines

A note to myself on how to recreate the basics of my development environment

```
#
sudo apt-get update
sudo apt-get install build-essential
sudo apt-get install tmux mc vim

# Convifgure vim
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ets-labs/python-vimrc/master/setup.sh)"
# Get my tmux config
wget -O - https://raw.githubusercontent.com/oroszgy/.tmux/master/install.sh | sh
# Install miniconda
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh && bash ./Miniconda3-latest-Linux-x86_64.sh && rm -rf ./Miniconda3-latest-Linux-x86_64.sh
```

If the system shell is a crap, get `zsh`

```
# Get zsh
sudo apt-get install zsh
# Setup zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
chsh -s `which zsh`
