

class Player
    attr_accessor :name, :life_points, :damage_nb, :player

    def initialize(name)
        @name = name 
        @life_points = 10
    end 

    def show_state
        puts "#{@name} a #{@life_points} point de vie"
    end 

    def gets_damage(damage_nb)
        @life_points = @life_points - damage_nb 
         if @life_points > 0
            puts "#{@name} a #{@life_points} point de vie"
         else 
            puts "Le joueur #{@name} a été tué !"
         end
    end 
    
    def attacks(player)
        puts "le joueur #{@name} attaque le joueur #{player.name}"
        damage = compute_damage
        player.gets_damage(damage)
        puts "il lui inflige #{compute_damage} points de dommages"
    end 

    def compute_damage
        return rand(1..6)
    end

end 


