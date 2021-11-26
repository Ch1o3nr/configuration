sudo apt install make build-essential llvm libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl libncurses5-dev xz-utils libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev tk-dev || echo "$LINENO: failed";
curl https://pyenv.run | bash || echo "$LINENO: failed";
echo -e '\n#pyenv\nexport PYENV_ROOT="$HOME/.pyenv"\nexport PATH="$PYENV_ROOT/shims:$PATH"\nif command -v pyenv 1>/dev/null 2>&1; then\n eval "$(pyenv init -)"\nfi' >> ~/.zshrc || echo "$LINENO: failed";
exec $SHELL -l || echo "$LINENO: failed";