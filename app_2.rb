require "pry"
require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


    puts "**************************"
    puts "| Welcome  to  ce  jeu  ! |"
    puts "|Que le plus fort gagne ;)|"
    puts "***************************"
    puts ""

    puts "Ready player one? Entre ton nom :"
    print ">"
    user_name = gets.chomp
    the_player = HumanPlayer.new(user_name) 


enemy_1 = Player.new("Josiane")
enemy_2 = Player.new("José")
enemies = [enemy_1, enemy_2]


while the_player.life_points > 0 && (enemy_1.life_points > 0 || enemy_2.life_points > 0) do

    puts "Voici l'état du joueur"
    puts the_player.show_state

    puts "Quelle action veux-tu effectuer ?"
    puts ""
    puts "Quelle action veux-tu effectuer ?"
    puts "a - chercher une meilleure arme"
    puts "s - chercher à se soigner"
    puts ""
    puts "attaquer un joueur en vue :"
    print "0 - " 
    enemy_1.show_state
    print "1 - "
    enemy_2.show_state
    puts
    puts "Votre choix ?"
    action = gets.chomp

    if action == "a"
        the_player.search_weapon
      end
      if action == "s"
        the_player.search_health_pack
      end
      if action == "0" && enemy_1.life_points > 0
        the_player.attacks(enemy_1)
      end
      if action == "1" && enemy_2.life_points > 0
        the_player.attacks(enemy_2)
      end

    puts ""
    puts "Les autres joueurs t'attaquent !"

    enemies.each do | enemy |
        if enemy.life_points > 0
          enemy.attacks(the_player)
        end

    end

end


puts "end of the game"
if the_player.life_points > 0
puts "BRAVO TU AS GAGNE !!!"
else
puts "Loser ! Tu as perdu !"
end 
