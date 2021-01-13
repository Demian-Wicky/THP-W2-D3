
def dice
    dice = rand(1..6)
    return dice
end

def stairway_game(dice)
    floor_level = 0
    roll_dice_times = 0
    while floor_level < 10
        puts "tu es au niveau #{floor_level}"
        puts "Press enter pour lancer le dé"
        enter = gets.chomp
        
        roll_dice_times += 1
        if dice == 5 || dice == 6
            floor_level += 1 
            puts "Tu as obtenue #{dice}, tu avances d'une marche. Tu es maintenant au niveau #{floor_level} !"
            puts " "
        elsif dice == 1
            floor_level -= 1 
            puts "Tu as obtenue #{dice}, tu recules d'une marche. Tu es maintenant au niveau #{floor_level} !"
            puts " "
        else dice == 2 || dice == 3 || dice == 4
            puts "Tu as obtenue #{dice}, il ne se passe rien. Tu reste au niveau #{floor_level} !"
            puts " "
        end

    end
    puts " tu as gagné en #{roll_dice_times} lancé de dés !!"
end

def perform
    stairway_game(dice)
end

perform