declare -a CASKS=(
    "alfred",
    "docker",
    "dash",
    "figma",
    "google-chrome",
    "iterm2"
    "arabiner-elements",
    "lastpass",
    "visual-studio-code",
    "spotify",
    "sourcetree"
)

echo "Installing casks 🚀"
for i in "${CASKS[@]}"; do
    echo "Installing $i"
    brew install --cask "$i"
done