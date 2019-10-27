function launch_kodi
	while true
		if read_confirm "Launch kodi"
			kodi
		else
			break
		end
	end
end
