sudo apt update && sudo apt upgrade -y
sudo apt-get purge nikto crackmapexec 

sudo apt-get install -y flameshot arc-theme i3status i3 python3-pip rofi cargo compton imagemagick tmux picom alacritty nitrogen
sudo apt-get install -y libxcb-shape0-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev autoconf meson

mkdir -p ~/.config/i3
mkdir -p ~/.config/compton
mkdir -p ~/.config/rofi
mkdir -p ~/.config/alacritty

pip3 install --user pywal
export PATH="${PATH}:${HOME}/.local/bin/"

cp .config/i3/config ~/.config/i3/config
cp .config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
cp .config/i3/i3status.conf ~/.config/i3/i3status.conf
cp .config/rofi/config ~/.config/rofi/config

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
