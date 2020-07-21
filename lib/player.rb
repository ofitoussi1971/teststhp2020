class Player
  attr_accessor :name, :life_points

  def initialize(name)
    @name = name
    @life_points = 10
  end

  def show_state
    puts "#{@name} a #{@life_points} points de vie"
  end

  def gets_damage(num)
      @life_points = @life_points - num
      if @life_points <= 0
      puts "OH NON !!! #{@name.upcase} VIENT DE BECTER SON ACTE DE NAISSANCE !!!"
    end 
  end

  def attacks(player)
    puts "#{@name} attaque #{player.name}..."
    puts "VAS-Y #{@name.upcase}, C'EST BON !!!"
    degat = compute_damage
    player.gets_damage(degat)
    puts " "
    puts "#{@name} lui à infligé #{degat} points de dégat !!!"
    
  end



    def compute_damage
      return rand(1..6)
    end
    
end

