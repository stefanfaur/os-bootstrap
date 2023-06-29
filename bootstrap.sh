#!/bin/bash
set -e

INCLUDE_GUI=0

for arg in "$@"
do
    case $arg in
        --include-gui)
        INCLUDE_GUI=1
        shift # Remove --include-gui from processing
        ;;
        *)
        shift # Remove generic argument from processing
        ;;
    esac
done

sudo apt update -y

if [[ $INCLUDE_GUI -eq 1 ]]; then
    sudo apt install -y kubuntu-desktop
    sudo apt install -y konsole
    # installing brave
    sudo apt install curl

    sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

    echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

    sudo apt update

    sudo apt install -y brave-browser

fi

sudo apt install -y git
sudo apt install -y tmux
bash <(curl -sL https://raw.githubusercontent.com/denisidoro/navi/master/scripts/install) --force
sudo apt install -y tldr
sudo apt install -y exa
sudo apt install -y hyperfine
sudo snap install nvim --classic
mkdir ~/.config
git -C ~/.config/ clone https://github.com/Imrvrs/nvim.git
sudo apt install -y zsh
sudo chsh -s $(which zsh)
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="tjkirch"/g' ~/.zshrc
sed -i "/plugins=(git)/c\plugins=(git zsh-autosuggestions dirhistory copyfile)" ~/.zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sudo sudo apt -y autoremove
reboot