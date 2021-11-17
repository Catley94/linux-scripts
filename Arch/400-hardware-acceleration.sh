#!/bin/bash
# Hardware Acceleration: https://wiki.archlinux.org/title/Hardware_video_acceleration
read -n "This script needs \"yay\" installed, please make sure this installed before continuing"

# Adding Intel-Media
sudo pacman -S intel-media-driver
# Adding Intel GPU Tools so can monitor 3D Rendering: by running intel_gpu_top in terminal
sudo pacman -S intel-gpu-tools
# Adding htop to monitor CPUs
sudo pacman -S htop



# Downloading stable google chrome
#wget https://aur.archlinux.org/cgit/aur.git/snapshot/aur-710114824f61f1468346d7de4072dc041fac8177.tar.gz
yay -S google-chrome

# Extracting tar
tar -xf aur-710114824f61f1468346d7de4072dc041fac8177.tar.gz

# Building package from extracted tar
cd aur-710114824f61f1468346d7de4072dc041fac8177 && makepkg -scri

read -n "Each echo prompt you must press [any] key to move on"
read -n "Open Google Chrome"
read -n "Enable these Flags under chrome://flags"
read -n "Temporarily unexpire M90 flags"
read -n "Override software rendering list"
read -n "GPU rasterization"
read -n "Hardware-accelerated video decode"
read -n "Zero-copy rasterizer"


# Adding flags for Chrome to enable VAAPI
echo --enable-features=VaapiVideoDecoder >> ~/.config/chrome-flags.conf
echo --use-gl=desktop >> ~/.config/chrome-flags.conf

read -n "Check if Hardware accelleration is working by going to chrome://gpu"
echo "You should see the below"
read -n "Graphics Feature Status
    Canvas: Hardware accelerated
    Compositing: Hardware accelerated
    Multiple Raster Threads: Disabled (Shows disabled for me because my CPU doesn't support hyperthreading, if your's does, this should be shown as enabled)
    Out-of-process Rasterization: Hardware accelerated
    OpenGL: Enabled
    Rasterization: Hardware accelerated on all pages
    Skia Renderer: Enabled
    Video Decode: Hardware accelerated
    Vulkan: Disabled
    WebGL: Hardware accelerated
    WebGL2: Hardware accelerated"




