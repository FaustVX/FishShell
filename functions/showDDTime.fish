function showDDTime                  
	for pid in (echo (ps ax | grep -v sudo | grep -v "status=progress" | grep "dd ") | cut -d" " -f2)
		sudo kill -USR1 $pid 
		echo (ps ax | grep -v ' grep ' | grep $pid)
	end
end