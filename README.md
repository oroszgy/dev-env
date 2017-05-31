# Development environment for Linux machines

Quick install: `sh -c "$(curl -L https://raw.githubusercontent.com/oroszgy/dev-env/master/install.sh)"`

## Install the essentials
``` bash
sudo apt-get update
sudo apt-get install build-essential cmake exuberant-ctags zsh tmux mc vim htop pv enca parallel tree jq -y
```

### Install miniconda
``` bash
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh && bash ./Miniconda3-latest-Linux-x86_64.sh && rm -rf ./Miniconda3-latest-Linux-x86_64.sh
```

## Configure the system
### Get my tmux config
``` bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/oroszgy/.tmux/master/install.sh)"
```

### Convifgure vim
``` bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/oroszgy/python-vimrc/master/setup.sh)"
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
```

### Use `oh-my-zsh`
``` bash
sh -c "$(curl -fsSL https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh)"
USER=$(whoami)
sudo chsh -s `which zsh` $USER
```

### Start tmux automatically with the shell
```bash
echo "if command -v tmux>/dev/null; then [[ ! xterm-256color =~ screen ]] && [ -z  ] && exec tmux attach; fi" >> ~/.zshrc
```

If necessary add the ssh key to the remote server: `ssh-copy-id $HOSTNAME`
