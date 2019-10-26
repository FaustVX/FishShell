function backupDiskVHD --argument disk file
	set -l uuid ''
	if VBoxManage showhdinfo $file
		echo 'UUID ?'
		if read -l id
			set uuid --uuid $id
		else
			return 1
		end
	else
		return 1
	end

	if sudo dd if=$disk bs=4M conv=fsync status=progress | VBoxManage convertfromraw stdin $file.new (echo (sudo blockdev --getsize64 $disk)) --format VHD --variant Fixed $uuid
		mv $file.new $file
		return 0
	end
	return 1
end
