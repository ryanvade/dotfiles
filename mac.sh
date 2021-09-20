function install_oh_my_zsh () {
    echo "Installing Oh My Zsh"
    touch $HOME/.zshrc
    if [ ! -d "$HOME/.oh-my-zsh" ]; then
        # bash <(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)
        curl -fsSL -o /tmp/install-oh-my-zsh.sh https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh
        chmod +x /tmp/install-oh-my-zsh.sh
        /tmp/install-oh-my-zsh.sh --unattended
    fi
    echo "Oh My Zsh Installed"
}

function install_spaceship_theme () {
    echo "Installing Spaceship Theme"
    if [ ! -d "$HOME/.oh-my-zsh/custom/themes/spaceship-prompt" ]; then
        git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$HOME/.oh-my-zsh/custom/themes/spaceship-prompt" --depth=1
        ln -s "$HOME/.oh-my-zsh/custom/themes/spaceship-prompt/spaceship.zsh-theme" "$HOME/.oh-my-zsh/custom/themes/spaceship.zsh-theme"

    fi
    echo "Spaceship Theme Installed"
    echo "Setting Spaceship Theme as default"
    sed -i -e "s/ZSH_THEME=.*/ZSH_THEME=\"spaceship\"/" $HOME/.zshrc
    echo "Spaceship Theme is default"
}

function install_firacode_font () {
    brew tap homebrew/cask-fonts
    brew install --cask font-fira-code
}

function install_1password () {
    echo "Install 1Password (Y/n): "
    while true; do
        read -r -s -t 5 yn
        case $yn in
            [Yy]* ) echo "Installing 1Password"; brew install 1password 1password-cli; break;;
            [Nn]* ) break;;
        esac
    done
}

function install_dotnet () {
    echo "Install Dotnet (Y/n): "
    while true; do
        read -r -s -t 5 yn
        case $yn in
            [Yy]* ) echo "Installing Dotnet"; brew install dotnet dotnet-sdk; break;;
            [Nn]* ) break;;
        esac
    done
}

function _install_node () {
    curl -fsSL -o /tmp/install-nvm.sh https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh 
    chmod +x /tmp/install-nvm.sh
    /tmp/install-nvm.sh
    source $HOME/.zshrc
    nvm install --lts
}

function install_node () {
    echo "Install Node.js (Y/n): "
    while true; do
        read -r -s -t 5 yn
        case $yn in
            [Yy]* ) echo "Installing Nodejs via Nvm"; _install_node; break;;
            [Nn]* ) break;;
        esac
    done
}

function install_golang () {
    echo "Install Golang (Y/n): "
    while true; do
        read -r -s -t 5 yn
        case $yn in
            [Yy]* ) echo "Installing Golang"; brew install golang; break;;
            [Nn]* ) break;;
        esac
    done
}

function _install_rust () {
    curl -o /tmp/install-rust.sh --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs
    chmod +x /tmp/install-rust.sh
    /tmp/install-rust.sh
}

function install_rust () {
    echo "Install Rustlang (Y/n): "
    while true; do
        read -r -s -t 5 yn
        case $yn in
            [Yy]* ) echo "Installing Rustlang"; _install_rust; break;;
            [Nn]* ) break;;
        esac
    done
}

function install_vue_cli () {
    echo "Install Vue CLI (Y/n): "
    while true; do
        read -r -s -t 5 yn
        case $yn in
            [Yy]* ) echo "Installing Vue CLI"; npm i -g @vue/cli; break;;
            [Nn]* ) break;;
        esac
    done
}

function install_angular_cli () {
    echo "Install Angular CLI (Y/n): "
    while true; do
        read -r -s -t 5 yn
        case $yn in
            [Yy]* ) echo "Installing Angular CLI"; npm i -g @angular/cli; break;;
            [Nn]* ) break;;
        esac
    done
}

function install_jetbrains_toolbox () {
    echo "Install Jetbrains Toolbox (Y/n): "
    while true; do
        read -r -s -t 5 yn
        case $yn in
            [Yy]* ) echo "Installing Jetbrains Toolbox"; brew install jetbrains-toolbox; break;;
            [Nn]* ) break;;
        esac
    done
}

function install_visual_studio_code () {
    echo "Install Visual Studio Code (Y/n): "
    while true; do
        read -r -s -t 5 yn
        case $yn in
            [Yy]* ) echo "Installing Visual Studio Code"; brew install visual-studio-code; break;;
            [Nn]* ) break;;
        esac
    done
}

function install_htop () {
    brew install htop
}

function install_stow () {
    brew install stow
}

function install_tmux () {
    brew install tmux
}

function install_harvest () {
    echo "Install Harvest Time Tracking (Y/n): "
    while true; do
        read -r -s -t 5 yn
        case $yn in
            [Yy]* ) echo "Installing Harvest"; brew install harvest; break;;
            [Nn]* ) break;;
        esac
    done
}

function install_github_cli () {
    echo "Install GitHub CLI (Y/n): "
    while true; do
        read -r -s -t 5 yn
        case $yn in
            [Yy]* ) echo "Installing GitHub CLI"; brew install gh; break;;
            [Nn]* ) break;;
        esac
    done
}

function install_docker_desktop () {
    echo "Install Docker Desktop (Y/n): "
    while true; do
        read -r -s -t 5 yn
        case $yn in
            [Yy]* ) echo "Installing Docker Desktop"; brew install --cask docker; break;;
            [Nn]* ) break;;
        esac
    done
}

function install_alacritty () {
    echo "Install Alacritty (Y/n): "
    while true; do
        read -r -s -t 5 yn
        case $yn in
            [Yy]* ) echo "Installing Alacritty"; brew install alacritty; break;;
            [Nn]* ) break;;
        esac
    done
}

function install_firefox () {
    echo "Install Firefox (Y/n): "
    while true; do
        read -r -s -t 5 yn
        case $yn in
            [Yy]* ) echo "Installing Firefox"; brew install firefox; break;;
            [Nn]* ) break;;
        esac
    done
}

function install_chrome () {
    echo "Install Chrome (Y/n): "
    while true; do
        read -r -s -t 5 yn
        case $yn in
            [Yy]* ) echo "Installing Chrome"; brew install google-chrome; break;;
            [Nn]* ) break;;
        esac
    done
}

function install_ms_teams () {
    echo "Install MS Teams (Y/n): "
    while true; do
        read -r -s -t 5 yn
        case $yn in
            [Yy]* ) echo "Installing MS Teams"; brew install microsoft-teams; break;;
            [Nn]* ) break;;
        esac
    done
}

function install_ms_office () {
    echo "Install MS Office (Y/n): "
    while true; do
        read -r -s -t 5 yn
        case $yn in
            [Yy]* ) echo "Installing MS Office"; brew install microsoft-office; break;;
            [Nn]* ) break;;
        esac
    done
}

function bootstrap_mac () {
    # check for and install homebrew
    echo "Checking for Homebrew"
    if ! brew_loc="$(type -p brew)" || [[ -z $brew_loc ]]; then
        echo "installing Homebrew"
        bash <(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)
    fi
    echo "Homebrew Installed"

    # Install Basics
    echo "Installing Basic Configurations"
    install_oh_my_zsh
    install_spaceship_theme
    install_firacode_font

    echo "Installing Password Managers"
    install_1password

    echo "Installing SDKs"
    install_dotnet
    install_node
    install_golang
    install_rust
    install_vue_cli
    install_angular_cli

    echo "Installing IDEs"
    install_jetbrains_toolbox
    install_visual_studio_code

    echo "Installing Tools"
    install_htop
    install_stow
    install_tmux
    install_harvest
    install_github_cli
    install_docker_desktop
    install_alacritty

    echo "Installing Browsers"
    install_firefox
    install_chrome

    echo "Installing MS Office Products"
    install_ms_teams
    install_ms_office
}