	def search_first_name
		print "First name: "
		first_name = gets.chomp 
		people = Person.where("first_name LIKE '%#{first_name}%'")
		return people
	end

	def search_last_name
		print "Last name: "
		last_name = gets.chomp 
		people = Person.where("last_name LIKE '%#{last_name}%'")
		return people
	end
	
	def list(people)
		if people.empty?
			puts "Stop wasting time!"
		else
			people.each do |entry|
				puts "#{entry.first_name} #{entry.last_name}"
				puts "Phone numbers:"
				entry.phones.each do |phone|
					puts "#{phone.label}: #{phone.phone}"
				end
				puts "Emails:"
				entry.emails.each do |email|
					puts "#{email.label}: #{email.email}"
				end
			end
		end
	end

def search

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
			result = search_first_name
			list(result)
		elsif select == 2
			result = search_last_name
			list(result)
		elsif select == 3
			puts "\nReturning to main menu…\n\n"
		else
			puts "\nStop wasting time!\n\n"
		end
	rescue ArgumentError
		puts "\nStop wasting time, use a number!\n\n"
	end

end