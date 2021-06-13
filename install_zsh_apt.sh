#!/bin/bash
sudo apt-get install zsh -y && chsh -s /bin/zsh || error_exit "$LINENO: failed"

