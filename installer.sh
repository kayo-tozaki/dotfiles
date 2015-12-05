OS=`uname -a`

case "$OS" in
 *"Ubuntu"* ) echo "Ubuntu";;
 *"Linux"* ) echo "Linux"  ;; 
 *"Darwin"* ) echo "Darwin(MacOS)" ;;
 * ) echo "none" ;;
esac

