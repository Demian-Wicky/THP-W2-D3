
def ask_dice
    dice = rand(1..6)
    return dice
end

def result(floor_level)
    return puts "Tu as obtenue #{ask_dice}. Tu es maintenant au niveau #{floor_level} !"
end

def stairway_game(dice)
    floor_level = 0
    roll_dice_times = 0
    while floor_level < 10
        puts "tu es au niveau #{floor_level}"
        puts "Press enter pour lancer le dé"
        enter = gets.chomp
        dice = ask_dice
        roll_dice_times += 1
        if dice == 5 || dice == 6
            floor_level += 1 
            result(floor_level)

        elsif dice == 1
            floor_level -= 1 
            result(floor_level)
 
        else dice == 2 || dice == 3 || dice == 4
            result(floor_level)

        end

    end
    puts " tu as gagné en #{roll_dice_times} lancé de dés !!"
    return floor_level
end

def perform
    stairway_game(ask_dice)
end

perform

