cd ~/Downloads && git clone git://github.com/wting/autojump.git || echo "$LINENO: failed";
cd ~/Downloads/autojump && ./install.py && cd && rm -rf ~/Downloads/autojump|| echo "$LINENO: failed";
echo -e '\n#autojump\n        [[ -s $HOME/.autojump/etc/profile.d/autojump.sh ]] && source /home/user/.autojump/etc/profile.d/autojump.sh\n\n        autoload -U compinit && compinit -u\n' >> ~/.zshrc || echo "$LINENO: failed";
exec $SHELL -l || echo "$LINENO: failed";