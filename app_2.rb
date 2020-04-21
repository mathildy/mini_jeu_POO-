require "pry"
require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

def welcome
    puts "**************************"
    puts "| Welcome  to  ce  jeu  ! |"
    puts "|Que le plus fort gagne ;)|"
    puts "***************************"
    puts ""
end

welcome

def choose_name
    puts "Ready player one? Entre ton nom :"
    print ">"
    user_name = gets.chomp
    the_player = HumanPlayer.new(user_name) 
end 


choose_name

def enemies_create
enemy_1 = Player.new("Josiane")
enemy_2 = Player.new("José")
enemies = [enemy_1, enemy_2]
end

enemies_create

#while the_player.life_points >0 && (enemy_1.life_points > 0 || enemy_2.life_points >0)
def state_show
    puts "Voici l'état du joueur"
    puts the_player.show_state
end

state_show

def menu 
    puts "Quelle action veux-tu effectuer ?"
    puts ""
    puts "Quelle action veux-tu effectuer ?"
    puts "a - chercher une meilleure arme"
    puts "s - chercher à se soigner"
    puts ""
    puts "attaquer un joueur en vue :"
    puts "0 - #{enemy_1.show_state}"
    puts "1 - #{enemy_2.show_state}"
end 

menu


puts "end of the game"
puts "BRAVO TU AS GAGNE"
puts "Loser ! Tu as perdu !"