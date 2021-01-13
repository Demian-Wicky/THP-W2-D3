def stairway_game
    
    roll_dice_board = []
    number_of_game = 100
    roll_dice_total = 0

    number_of_game.times do
        floor_level = 0
        roll_dice = 0
   
        while floor_level < 10
            dice = rand(1..6)
            roll_dice += 1
            if dice == 5 || dice == 6
                floor_level += 1 
            elsif dice == 1
                floor_level -= 1 
            else dice == 2 || dice == 3 || dice == 4
 
            end  
        end
        roll_dice_board << roll_dice
    
   end
   
   print "Voici le tableau récapitulant le nbre de lancé de dés nécéssaires par party #{roll_dice_board}"
   puts " "
   puts "Sur #{number_of_game} parties, il faut en moyenne #{roll_dice_board.sum / number_of_game} lancé de dés pour gagner"

end

def perform
    stairway_game 
end

perform