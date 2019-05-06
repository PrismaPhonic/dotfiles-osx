#!/bin/sh

## Other Scripts to Run
## Font Script
./install-fonts.sh

## Apple Settings Script
sudo ./AppleSettingsScripts/MacSettings.sh

# Install oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
chsh -s /bin/zsh

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew install cask
brew doctor
brew tap buo/cask-upgrade
brew tap phinze/homebrew-cask

brew install 

# Install drivers
brew tap caskroom/drivers

# Install personal programs
brew cask install caskroom/versions/firefoxdeveloperedition
brew cask install google-chrome
brew cask install alfred
brew cask install bartender
brew cask install cheatsheet
brew cask install dropbox
brew cask install slack
brew cask install steam
brew cask install vlc
brew cask install osxfuse

# Install tools
brew install openssl
brew install pkg-config
brew install python3
brew install readline
brew install x264
brew install xvid
brew install xz
brew install postgres
brew install postgis
brew install neovim
brew install git-flow
brew install zsh-history-substring-search
brew install zsh-syntax-highlighting
brew install mono
brew install ntfs-3g
brew cask install 
brew cask install dotnet-sdk
brew cask install visual-studio-code
brew cask install rider
brew cask install unity-hub

# Install Personal Programs
brew cask install anki

# Install chunkwm
brew tap koekeishiya/formulae
brew install --HEAD --with-tmp-logging --with-purify chunkwmc
brew services start chunkwm

# Install chunkwm background blur extra program
brew install --HEAD chunkwm-blur

# Install chunkwm-sa MUST HAVE SIP DISABLED FIRST
sudo chunkwm --install-sa
pkill Dock

# Install skhd hotkey daemon and start the service
brew install --HEAD --with-logging koekeishiya/formulae/skhd
brew services start skhd

# Setup Postgres
pg_ctl -D /usr/local/var/postgres start
initdb /usr/local/var/postgres
brew services start postgres

# Install Xcode
xcode-select --install

# Install pip
easy_install pip

# Install python neovim module
sudo pip3 install --upgrade pynvim

# Install powerline
pip3 install powerline-status

# Install powerline fonts
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

# Install vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install Node
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
nvm install node
nvm alias default node

# Install linting tools
npm install -g eslint
npm install --global prettier

# Install neovim npm module globally
npm install -g neovim

# Install gulp
npm install -g gulp

# Install jest globally
npm install -g jest

# Install Rust
curl https://sh.rustup.rs -sSf | sh

# Install nightly rust
rustup install nightly

# Install RLS
rustup component add rls rls-analysis rust-src

# Install fzf fuzzy finder
brew install fzf
$(brew --prefix)/opt/fzf/install

# Install alacritty terminal application
brew cask install alacritty

# Setup omnisharp-roslyn
mkdir temp
git clone https://github.com/OmniSharp/omnisharp-roslyn.git temp/
./temp/build.sh
rm -r temp

# Reduce transition time to 0 when switching workspaces
defaults write com.apple.dock expose-animation-duration -int 0; killall Dock
