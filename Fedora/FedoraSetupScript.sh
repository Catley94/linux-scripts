echo 'max_parallel_downloads=10' | sudo tee -a /etc/dnf/dnf.conf
sudo dnf -y upgrade --refresh
sudo fwupdmgr get-devices
sudo fwupdmgr refresh --force
sudo fwupdmgr get-updates
sudo fwupdmgr update
sudo dnf install -y https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
sudo dnf upgrade --refresh
sudo dnf -y groupupdate core
sudo dnf install -y rpmfusion-free-release-tainted
sudo dnf install -y rpmfusion-nonfree-release-tainted
sudo dnf install -y dnf-plugins-core
sudo dnf install -y *-firmware
sudo dnf install -y libdvdcss
sudo dnf install -y gstreamer1-plugins-{bad-*,good-*,ugly-*,base} gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel ffmpeg gstreamer-ffmpeg
sudo dnf install -y lame* --exclude=lame-devel
sudo dnf -y groupupdate sound-and-video
sudo dnf config-manager --set-enabled fedora-cisco-openh264
sudo dnf install -y gstreamer1-plugin-openh264 mozilla-openh264
sudo dnf group upgrade --with-optional Multimedia
sudo dnf install -y fira-code-fonts 'mozilla-fira*' 'google-roboto*'
sudo dnf install -y steam
sudo dnf install -y vlc
sudo dnf install fedora-workstation-repositories
sudo dnf install openssl1.1
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak update
flatpak install flathub com.bitwarden.desktop
flatpak install flathub com.spotify.Client
