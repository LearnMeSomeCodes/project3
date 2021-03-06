### Note: This require statement is unnecessary
###       since it's referring to the current file.
require_relative 'new'

require_relative 'lib/models'
require_relative 'lib/connect'

def new
	puts "\n-+-+-+-New Entry-+-+-+-\n\n"
	print "First Name: "
	first_name = gets.chomp
	print "Last Name: "
	last_name = gets.chomp

	person = Person.new(first_name: first_name, last_name: last_name)
	puts person

	pchoice = "y"
	begin
	print "Phone label: "
	label = gets.chomp
	print "Phone number: "
	phone = gets.chomp

	person.phones.push Phone.new(phone: phone, label: label)

	print "Add an additional phone? [y/n]"
	pchoice = gets.chomp
	if pchoice == "y"
		puts "\nAdding an additional phone…\n"
	elsif pchoice == "n"
    ### Note: This branch of the conditional is
    ###       unnecessary.  The 'while' statement
    ###       below is sufficient to terminate
    ###       the loop.
	else
		puts "Stop wasting time and make a valid choice!"
	end
	end while pchoice != "n"

	echoice = "y"

  ### TODO: It looks like the indentation got
  ###       a little messed up starting here.
	begin
	print "Email label: "
	label = gets.chomp
	print "Email address: "
	email = gets.chomp
	person.emails.push Email.new(email: email, label: label)

	print "Add an additional email? [y/n]"
	echoice = gets.chomp
	if echoice == "y"
		puts "\nAdding an additional phone…\n"
	elsif echoice == "n"
	else
		puts "Stop wasting time and make a valid choice!"
	end

  ### Hmm: The loop terminates when I enter an
  ###      invalid option.  How can you change
  ###      the looping logic here to fix that?
	end while echoice != "n"

	if person.save!
		puts "\nSUCCESS! Added #{first_name} #{last_name} to the address book!\n\n"
	else
		put "\nFAILED! Invalid input—try again."

    ### Enhancement: Perhaps have it print the validation
    ###              error messages here?
	end
end