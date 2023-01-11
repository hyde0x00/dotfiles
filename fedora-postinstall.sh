#!/bin/sh

#
# https://docs.fedoraproject.org/en-US/quick-docs/
#
# browser.download.skipConfirmLaunchExecutable = true
# https://addons.mozilla.org/en-US/firefox/addon/adblock-plus/
# https://addons.mozilla.org/en-US/firefox/addon/browsec/
# https://addons.mozilla.org/en-US/firefox/addon/duplicate-tabs-closer/
# https://addons.mozilla.org/en-US/firefox/addon/link-gopher/
# https://addons.mozilla.org/en-US/firefox/addon/tabhunter/
# https://addons.mozilla.org/en-US/firefox/addon/video-downloadhelper/
# https://addons.mozilla.org/en-US/firefox/addon/vimium-ff/
#
# sudo dnf upgrade --refresh
# sudo dnf system-upgrade download --releasever=VERSION
#
# '[Desktop Entry]
# Name=Xbanish
# GenericName=Hide the mouse cursor when typing
# Exec=xbanish
# Terminal=false
# Type=Application
# X-GNOME-Autostart-enabled=true
# ' > "$HOME/.config/autostart/xbanish.desktop"
#

echo "
keepcache=True
defaultyes=True
max_parallel_downloads=20
" >> /etc/dnf/dnf.conf

echo "[Desktop Entry]
Name=Xcape
GenericName=CapslockCtrlEsc
Exec=xcape -e 'Caps_Lock=Escape'
Terminal=false
Type=Application
X-GNOME-Autostart-enabled=true
" > "$HOME/.config/autostart/xcape.desktop"

dnf -y install vim-X11 gnome-tweaks 

dnf -y remove unrar
dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
dnf -y install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
dnf -y install unrar

dnf -y copr enable dawid/xcape 
dnf -y install xcape

dnf -y install gstreamer1-plugins-{bad-\*,good-\*,base} gstreamer1-plugin-openh264 gstreamer1-libav --exclude=gstreamer1-plugins-bad-free-devel
dnf -y install lame\* --exclude=lame-devel
dnf -y group upgrade --with-optional Multimedia

# https://fedoramagazine.org/playing-music-on-your-fedora-terminal-with-mpd-and-ncmpcpp/
dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
dnf -y --allowerasing install mpd 
dnf -y install ncmpcpp

dnf -y copr enable leigh123linux/mpdevil 
dnf -y install mpdevil

dnf -y install dejavu-fonts-all
dnf -y install gpick fzf moreutils fdupes p7zip unrar qbittorrent xclip yt-dlp
dnf -y install clang-tools-extra go perl-HTML-Entities-Interpolate
