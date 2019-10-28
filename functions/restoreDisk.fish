function restoreDisk --argument disk file
	gunzip -cv $file | sudo dd of=$disk status=progress
end