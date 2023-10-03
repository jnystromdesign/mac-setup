declare -a CASKS=(
    "git"
    "http"
    "nvm"
    "youtube-dl"
)

echo "Installing Libs 📚"
for i in "${CASKS[@]}"; do
    echo "Installing $i 👈"
    brew install "$i"
done

echo "Installing Firacode fonts! 😛"
brew tap homebrew/cask-fonts
brew install --cask \
  font-fira-code \
  font-fira-mono \
  font-fira-mono-for-powerline \
  font-fira-sans
