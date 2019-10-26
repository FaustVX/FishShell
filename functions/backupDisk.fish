function backupDisk --argument disk file
	if sudo dd if=$disk bs=4M conv=fsync status=progress | gzip -v9 | sudo dd of=$file.new
		mv $file.new $file
		return 0
	end
	return 1
end
