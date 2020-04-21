require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("Marco")
player2 = Player.new("José")


while player1.life_points > 0 && player2.life_points > 0 do
  puts "Voici l'état que chaque joueur"
  puts player1.show_state
  puts player2.show_state
  puts "==========================="
  puts ""

  puts "Passons à la phase d'attaque :"
  puts ""
  print ">"
  player1.attacks(player2)  
    if player2.life_points <= 0
        break
    end

  puts ""
  print ">"
  player2.attacks(player1)
    if player1.life_points <= 0
        break
     end

end 
    