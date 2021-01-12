def say_hello
	puts "saisis ton prénom"
	print "> "
	first_name = gets.chomp
  	puts "Bonjour #{first_name}!"
end

say_hello