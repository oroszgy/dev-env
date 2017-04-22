# Development environment for Linux machines

A note to myself on how to recreate the basics of my development environment

``` bash
# Install the essentials
sudo apt-get update
sudo apt-get install build-essential -y
sudo apt-get install tmux mc vim -y

# Get my tmux config
wget -O - https://raw.githubusercontent.com/oroszgy/.tmux/master/install.sh | sh
# Install miniconda
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh && bash ./Miniconda3-latest-Linux-x86_64.sh && rm -rf ./Miniconda3-latest-Linux-x86_64.sh
# Convifgure vim
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ets-labs/python-vimrc/master/setup.sh)"
```

If the system shell is a crap, get `zsh`

``` bash
# Get zsh
sudo apt-get install zsh -y
# Setup zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
chsh -s `which zsh`
```

If necssary add the ssh key to the remote server

``` bash
ssh-copy-id $HOSTNAME
```
