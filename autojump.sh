git clone git://github.com/wting/autojump.git ~/Downloads || echo "$LINENO: failed";
~/Downloads/autojump/install.py || echo "$LINENO: failed";
echo -e '\n#autojump\n[[ -s /home/arst/.autojump/etc/profile.d/autojump.sh ]] && source /home/arst/.autojump/etc/profile.d/autojump.sh\nautoload -U compinit && compinit -u\n#autojump END' >> ~/.zshrc || echo "$LINENO: failed";
exec $SHELL -l || echo "$LINENO: failed";
