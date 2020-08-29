if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
/usr/bin/keychain $HOME/.ssh/id_rsa
source $HOME/.keychain/$HOSTNAME-sh
export GDK_SCALE=1
export GDK_DPI_SCALE=1.4
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
