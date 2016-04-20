# Install packages 
function ubuntu () {
  sudo apt-get -y install git vim zsh
}

function Linux () {
 Dist=`cat /proc/version`
 case "$Dist" in
  *"Red Hat"* ) RedHat ;;
  * ) echo "none Linux OS" ;;
 esac
}

function RedHat () {
 case "`cat /etc/redhat-release`" in
  *"CentOS"* ) CentOS ;;
  * ) echo "none RedHat OS" ;;
 esac
}

function CentOS () {
  sudo yum install -y git zsh vim
}

# Main
function main () {
cd ~
# judge Distribution
 OS=`uname -a`
 case "$OS" in
  *"Ubuntu"* ) ubuntu ;;
  *"Linux"* ) Linux  ;;
  *"Darwin"* ) echo "Darwin(MacOS)" ;;
  * ) echo "none" ;;
 esac
 
# clone dotfiles
git clone https://github.com/kayo-tozaki/dotfiles.git ~/dotfiles
cp -f ~/dotfiles/.g* ~/
cp -Rf ~/dotfiles/.v* ~/
# cp -f ~/dotfiles/.z* ~/

# start prezto.sh
chmod +x ~/dotfiles/prezto.sh
zsh ~/dotfiles/prezto.sh

# Install NeoBundle 
mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
vim +":NeoBundleInstall" +:q

}

main


