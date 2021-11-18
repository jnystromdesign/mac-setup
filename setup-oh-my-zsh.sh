# echo "Installing OH-MY-ZSH! 😎"
# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Linking custom aliases"
ln -s ~/mac-setup/oh-my-zsh-settings/files/aliases.zsh ~/.oh-my-zsh/custom/aliases.zsh

echo "Linking custom agnoster"
ln -s ~/mac-setup/oh-my-zsh-settings/themes/agnoster-custom.zsh ~/.oh-my-zsh/custom/themes/agnoster-custom.zsh

echo "Replacing zshrc with version managed"
rm ~/.zshrc
ln -s ~/mac-setup/oh-my-zsh-settings/.zshrc ~/.zshrc

echo "Restarting oh-my-zsh"
source ~/.zshrc