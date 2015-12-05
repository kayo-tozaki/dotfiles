git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
setopt EXTENDED_GLOB

for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do 
   ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}" 
done

cp ~/dotfiles/.zpreztorc ~/.zprezto/runcoms/
cp ~/dotfiles/.zprofile ~/.zprezto/runcoms/
cp ~/dotfiles/.zshenv ~/.zprezto/runcoms/
cp ~/dotfiles/.zshrc ~/.zprezto/runcoms/

chsh -s /bin/zsh 