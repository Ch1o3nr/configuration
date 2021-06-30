wget https://golang.org/dl/go1.16.5.linux-amd64.tar.gz -P ~/Downloads || echo "$LINENO: failed";
rm -rf /usr/local/go && tar -C /usr/local -xzf ~/Downloads/go1.16.5.linux-amd64.tar.gz || echo "$LINENO: failed";
echo -e '\n#go\nexport PATH=$PATH:/usr/local/go/bin\n#go END' >> ~/.zshrc || echo "$LINENO: failed";
exec $SHELL -l || echo "$LINENO: failed";
go version || echo "$LINENO: failed";
