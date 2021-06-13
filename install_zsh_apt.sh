#!/bin/bash
sudo yum install zsh -y && chsh -s /bin/zsh || error_exit "$LINENO: failed"
