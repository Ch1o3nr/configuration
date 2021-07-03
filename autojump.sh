cd ~/Downloads && git clone git://github.com/wting/autojump.git || echo "$LINENO: failed";
cd ./autojump && ./install.py || echo "$LINENO: failed";
echo -e '\n#autojump\n        [[ -s /home/user/.autojump/etc/profile.d/autojump.sh ]] && source /home/user/.autojump/etc/profile.d/autojump.sh\n\n        autoload -U compinit && compinit -u\n#autojump END' >> ~/.zshrc || echo "$LINENO: failed";
exec $SHELL -l || echo "$LINENO: failed";
