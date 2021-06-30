yum install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel || echo "$LINENO: failed";
git clone https://github.com/pyenv/pyenv.git ~/.pyenv || echo "$LINENO: failed";
echo -e '\n#penv\nexport PYENV_ROOT="$HOME/.pyenv"\nexport PATH="$PYENV_ROOT/bin:$PATH"\neval "$(pyenv init -- path)"\n#penv END' >> ~/.zshrc || echo "$LINENO: failed";
exec $SHELL -l || echo "$LINENO: failed";
