if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi
/usr/bin/keychain $HOME/.ssh/id_rsa
source $HOME/.keychain/$HOSTNAME-sh
export SSH_ASKPASS=~/Scripts/askpass.sh
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
