# TPM plugin for tmux
[$HOME/.zsh-quickstart-kit]
order = 30
checkout = git clone 'git@github.com:unixorn/zsh-quickstart-kit.git' '.zsh-quickstart-kit'
post_checkout = cd $HOME/.zsh-quickstart-kit; stow --target=$HOME zsh
