declare -a CASKS=(
    "git"
    "http"
    "nvm"
)

echo "Installing Libs 📚"
for i in "${CASKS[@]}"; do
    echo "Installing $i 👈"
    brew install "$i"
done

echo "Installing Firacode fonts! 😛"
brew tap caskroom/fonts
brew cask install \
  font-fira-code \
  font-fira-mono \
  font-fira-mono-for-powerline \
  font-fira-sans
