def search
	def search_first_name
		print "First name: "
		first_name = gets.chomp 
		p = Person.where(first_name: first_name)
		puts p.inspect
		p.each do |first_name, last_name|
			puts self.inspect
			puts "Phone numbers:"
			self.phones.each do |label, phone|
				"#{self.label}: #{self.phone}"
			end
			puts "Emails:"
			self.emails.each do |label, email|
				"#{self.label}: #{self.email}"
			end
		end
	end

	def search_last_name

	end

	menu = 0
	puts "-+-+-+-Search-+-+-+-"
	puts "1 - …by first name"
	puts "2 - …by last name"
	puts "3 - Return to main menu"
	print "\n? "
	menu = gets.chomp
	
	begin 
		select  = Integer(menu)
		if select == 1
			search_first_name
		elsif select == 2
			search_last_name
		elsif select == 3
			puts "\nReturning to main menu…\n\n"
		else
			puts "\nStop wasting time!\n\n"
		end
	rescue ArgumentError
		puts "\nStop wasting time, use a number!\n\n"
	end

end