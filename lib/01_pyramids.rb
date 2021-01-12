

def ask_ramses2
    nb_floors = 0
    while nb_floors.even?
        puts "Dis moi Ramsès II, il te faut une pyramide à combien d'étages ? (entre un nombre impair)"
	    print "> "
	    nb_floors = gets.chomp.to_i
    end
	return nb_floors
end


def half_pyramid(nb_floors)
    nb_floors.times do |index|
        puts " " * (nb_floors - index - 1) + "#" * (index * 2 + 1) #+ " " * (nb_floors - index + 1)
    end
end

def wtf_pyramid(nb_floors)

    nb_floors.times do |index|
        if index < (nb_floors / 2)
            puts " " * ((nb_floors / 2) - index) + "#" * (index * 2 + 1)
        elsif index == (nb_floors / 2)
            puts "#" * nb_floors
        else 
            puts " " * (index - (nb_floors / 2)) + "#" * (nb_floors - ((index - (nb_floors / 2)) * 2))
        end
    end
    

end



def perform
    nb_floors = ask_ramses2
    half_pyramid(nb_floors)
    wtf_pyramid(nb_floors)
end
  
perform
