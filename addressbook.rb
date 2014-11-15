puts "\e[H\e[2J"

require_relative 'lib/models'
require_relative 'lib/connect'
require_relative 'new'
require_relative 'search'

begin
	menu = 0
	puts "\n"
	puts "-+-+-+-Menu-+-+-+-"
	puts "1 - Create new entry"
	puts "2 - Search for entries"
	puts "3 - Quit application"
	print "\n? "
	menu = gets.chomp
	
	begin 
		select  = Integer(menu)
		if select == 1
			new
		elsif select == 2
			search
		elsif select == 3
			entries = Person.count
			puts "\nQuitting application… your #{entries} entries are safe and sound.\n\n"
		else
			puts "\nStop wasting time!\n\n"
		end
	rescue ArgumentError
		puts "\nStop wasting time, use a number!\n\n"
	end

end while select != 3