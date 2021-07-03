dnf groupinstall -y "Development Tools" || echo "$LINENO: failed";
dnf install -y zlib zlib-devel bzip2-devel openssl-devel sqlite-devel readline-devel || echo "$LINENO: failed";
curl https://pyenv.run | bash || echo "$LINENO: failed";
echo -e '\n#pyenv\nexport PYENV_ROOT="$HOME/.pyenv"\nexport PATH="$PYENV_ROOT/bin:$PATH"\neval "$(pyenv init --path)"\n#pyenv END' >> ~/.zshrc || echo "$LINENO: failed";
exec $SHELL -l || echo "$LINENO: failed";
