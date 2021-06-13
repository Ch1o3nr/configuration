#!/bin/bash
sudo apt-get install git -y || echo "$LINENO: failed";
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" || echo "$LINENO: failed";
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions || echo "$LINENO: failed";
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting || echo "$LINENO: failed";
cp ~/.zshrc ~/.zshrc.bak || echo "$LINENO: failed";
sed -i "s/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting sudo)/g" ~/.zshrc || echo "$LINENO: failed";
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k || echo "$LINENO: failed";
sed -i "s/robbyrussell/powerlevel10k\/powerlevel10k/g" ~/.zshrc || echo "$LINENO: failed";
sudo apt-get install emacs -y || echo "$LINENO: failed";
mkdir ~/.emacs.d || echo "$LINENO: failed";
curl ch1o3nr.com/asdf.bak > ~/.emacs.d/init.el || echo "$LINENO: failed";
sudo cp -r ~/.emacs.d /root || echo "$LINENO: failed";
echo -e '\n#alias\nalias em="emacs"\nalias vpn="expressvpn"\n#alias END' >> ~/.zshrc || echo "$LINENO: failed";
