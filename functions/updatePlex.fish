function updatePlex --argument plexToken
	pushd /tmp
	wget -O plex.deb "https://plex.tv/downloads/latest/5?channel=16&build=linux-armv7hf_neon&distro=debian&X-Plex-Token=$plexToken"
	sudo systemctl stop plexmediaserver.service
	sudo apt install ./plex.deb
	sudo systemctl restart plexmediaserver.service
	sudo rm plex.deb
	popd
end
