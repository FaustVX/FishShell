function watchDDTime --argument delay
	for pid in (echo (ps ax | grep -v sudo | grep -v "status=progress" | grep "dd ") | cut -d" " -f2)
		watch -n $delay sudo kill -USR1 $pid
	end
end