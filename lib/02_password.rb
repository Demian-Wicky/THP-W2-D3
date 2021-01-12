def signup
    puts "Choisissez votre mot de passe."
    print "> "
    password = gets.chomp.to_s
    return password
end


def login(password)
    puts "Saisis ton mot de passe pour entrer."
    print "> "
    passwordcheck = gets.chomp.to_s

    if passwordcheck != password
        puts "Mot de passe incorrect !"
        login(password)
    end
end


def welcome_screen
    puts "          .  ."
    sleep 0.05
    puts "          |\\_|\\"
    sleep 0.05
    puts "          | a_a\\"
    sleep 0.05
    # puts "          | | "]"
    puts "      ____| '-\\___        < Bienvenue dans la Batcave"
    sleep 0.05
    puts "     /.----.___.-'\\"
    sleep 0.05
    puts "    //        _    \\"
    sleep 0.05
    puts "   //   .-. (~v~) /|"
    sleep 0.05
    puts "  |'|  /\\:  .--  / \\"
    sleep 0.05
    puts " // |-/  \\_/____/\\/~|"
    sleep 0.05
    puts "|/  \\ |  []_|_|_] \\ |"
    sleep 0.05
    puts "| \\  | \\ |___   _\\ ]_}"
    sleep 0.05
    puts "| |  '-' /   '.'  |"
    sleep 0.05
    puts "| |     /    /|:  |"
    sleep 0.05
    puts "| |     |   / |:  /\\"
    sleep 0.05
    puts "| |     /  /  |  /  \\"
    sleep 0.05
    puts "| |    |  /  /  |    \\"
    sleep 0.05
    puts "\\ |    |/\\/  |/|/\\    \\"
    sleep 0.05
    puts " \\|\\ |\\|  |  | / /\/\__\\"
    sleep 0.05
    puts "  \\ \\| | /   | |__"
    sleep 0.05
    puts "       / |   |____)"
    sleep 0.05
    puts "       |_/"

end


def perform
    password = signup
    login(password)
    welcome_screen
end

perform








