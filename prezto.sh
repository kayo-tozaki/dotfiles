git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB

for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do 
   ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}" 
done

\cp -f ~/dotfiles/.zpreztorc ~/.zprezto/runcoms/.zpreztorc
\cp -f ~/dotfiles/.zprofile ~/.zprezto/runcoms/.zprofile
\cp -f ~/dotfiles/.zshenv ~/.zprezto/runcoms/.zshenv
\cp -f ~/dotfiles/.zshrc ~/.zprezto/runcoms/.zshrc

chsh -s /bin/zsh 