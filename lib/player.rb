

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

class HumanPlayer < Player 
    attr_accessor :weapon_level

    def initialize(name)
        super(name)
        @life_points = 100
        @weapon_level = 1
    end 

    def show_state
        puts "#{@name} a #{@life_points} point de vie et une arme de niveau #{@weapon_level} "
    end 

    def compute_damage
        rand(1..6) * @weapon_level
    end

    def search_weapon
        weapon_dice = rand(1..6)
        puts "Tu as trouvé une arme de niveau #{weapon_dice}" 
         
        if weapon_dice > @weapon_level
            puts "Youhou ! elle est meilleure que ton arme actuelle : tu la prends."
         
        else 
            puts "M@*!$... elle n'est pas mieux que ton arme actuelle.."
        end

        def search_health_pack
            dice = rand(1..6)
            if dice == 1
                puts "Tu as trouvé : nada"
            elsif dice <= 2 || dice <= 5
                puts "Bravo, tu as trouvé un pack de +50 points de vie !"
                @life_points = @life_points + 50
            else dice == 6
                puts "Waow, tu as trouvé un pack de +80 points de vie !"
                @life_points = @life_points + 80
            end 
            
        end 
   
    end 


end 


