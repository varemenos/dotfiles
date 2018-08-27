#!/usr/bin/env bash

if [[ $CURRENT_OS == 'Linux' ]]; then
	apps=(
		# cli
		zsh
		wget
		curl
		rsync
		thefuck
		openssh
		command-not-found
		ctags
		crda
		dialog
		dosfstools
		f2fs-tools
		ntfs-3g
		mtools
		dmraid
		efibootmgr
		gptfdisk
		haveged
		hwdetect
		hwinfo
		libui-sh
		ntp
		os-prober
		parted
		prebootloader
		gummiboot
		curlftpfs
		hddtemp
		hdparm
		htop
		lm_sensors
		mongodb
		nginx
		nodejs
		ntfs-3g
		openssh
		openvpn
		ruby-build
		screenfetch
		sni-qt
		tmux
		tree
		sshfs
		wine
		alsa-utils
		sudo
		unzip
		unrar
		# apps
		guake
		sublime-text-nightly
		mysql-workbench
		google-chrome
		firefox
		spotify
		dropbox
		deja-dup
		gitg
		atom-editor
		electron
		filebot
		filezilla
		gimp
		inkscape
		gparted
		opera
		qbittorrent
		robomongo-git
		simplescreenrecorder
		teamviewer
		smplayer
		spotify
		virtualbox
		vlc
		# gnome
		gnome
		gdm
		#gnome configuration
		gnome-tweak-tool
		dconf
		dconf-editor
		gconf
		gconf-editor
		gksu
		file-roller
		# icons
		numix-circle-icon-theme-git
		# ruby-build for rbenv installations
		ruby-build
		# network tools
		dnsutils
		modemmanager
		inetutils
		wireless_tools
		traceroute
		netctl
		net-tools
		networkmanager-openvpn
		networkmanager-pptp
		usb_modeswitch
		whois
		wpa_actiond
		network-manager-applet
		# android
		android-sdk-platform-tools
		android-udev
		# other
		gst-libav
		gst-plugins-bad
		gst-plugins-base
		gst-plugins-good
		gst-plugins-ugly
		gstreamer0.10-plugins
		gstreamer-vaapi
		gvfs-mtp
		libgnomeui
		libwnck3
	)

	packer -S ${apps[@]}
else
	apps=(
		ack
		adns
		aircrack-ng
		autoconf
		autoenv
		bat
		binutils
		binwalk
		cifer
		consul
		coreutils
		curl
		dex2jar
		dns2tcp
		docker
		docker-compose
		docker-machine
		docker-swarm
		dos2unix
		elasticsearch
		emacs
		fcrackzip
		ffmpeg
		findutils
		foremost
		freetype
		gcc
		gdbm
		gettext
		git
		git-flow
		git-lfs
		gmp
		gnu-sed
		gnupg
		gnutls
		go
		grep
		hashpump
		hh
		htop
		hub
		hydra
		imagemagick
		isl
		jasper
		john
		jpeg
		kibana
		knock
		lame
		libassuan
		libdnet
		libevent
		libffi
		libgcrypt
		libgpg-error
		libidn2
		libksba
		libmpc
		libpng
		libtasn1
		libtiff
		libtool
		libunistring
		libusb
		libyaml
		lua
		lynx
		mas
		maven
		mongodb
		moreutils
		mpfr
		mysql
		nano
		netpbm
		nettle
		nmap
		npth
		ntfs-3g
		nvm
		openssl
		p11-kit
		p7zip
		pcre
		perl
		pigz
		pinentry
		pkg-config
		pngcheck
		pv
		python
		python3
		rbenv
		readline
		redis
		rename
		rlwrap
		ruby
		ruby-build
		screen
		sfnt2woff
		sfnt2woff-zopfli
		socat
		sqlite
		sqlmap
		ssdeep
		tcpflow
		tcpreplay
		tcptrace
		tmux
		tree
		unrar
		vbindiff
		vim
		wget
		woff2
		x264
		xvid
		xz
		zopfli
		zsh
	)

	caskApps=(
		1password
		atom
		backblaze
		cloudapp
		dash
		docker
		firefox
		font-fira-code
		franz
		gimp
		google-chrome
		google-drive-file-stream
		inkscape
		iterm2
		java
		java8
		kap
		mongodb-compass
		nvidia-geforce-now
		onyx
		osxfuse
		scroll-reverser
		skype
		sourcetree
		spectacle
		spotify
		steam
		sublime-text
		videostream
		virtualbox
		visual-studio-code
		vlc
		xquartz
	)

	brew install ${apps[@]}
	brew cask install ${caskApps[@]}
fi
