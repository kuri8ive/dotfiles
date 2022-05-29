# reference: https://qiita.com/Y_uuu/items/db274e2d3eba3cd5c0dd

# HomeBrewのインストール
if [ ! -x "`which brew`" ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update
fi

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/${USER}/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

# mas-cliのインストール
if [ ! -x "`which mas`" ]; then
  brew install mas
fi

mas install 539883307  # LINE

brew install google-japanese-ime --cask
brew install google-chrome       --cask
brew install google-drive        --cask
brew install visual-studio-code  --cask
brew install docker              --cask
brew install iterm2              --cask
brew install discord             --cask
brew install deepl               --cask
brew install zoom                --cask
brew install rstudio             --cask
brew install slack               --cask

brew install git
brew install docker-compose
brew install wget
brew install asdf
brew install peco
brew install z
brew install ghq
brew install starship
brew install yarn
brew install openssh
brew install gh
brew install go
brwe install hugo

# Python environment
brew install pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
pyenv install 3.10.3
pyenv global 3.10.3

source ~/.zshrc 
