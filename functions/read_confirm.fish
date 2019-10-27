function read_confirm --argument ask
	while true
		echo $ask'? [Y/n]'
		read -l confirm

		switch $confirm
			case '' Y y
				return 0
			case N n
				return 1
		end
	end
end
