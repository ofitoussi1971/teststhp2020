require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'


player1 = Player.new("Josiane")
player2 = Player.new("José")
puts " "
puts "Voyons l'etat de forme initial de nos combattants !"
puts " "
puts player1.show_state
puts player2.show_state
puts " "
puts "#{player1.name} aura l'honneur d'exécuter la premiere attaque !"

while player1.life_points > 0 && player2.life_points > 0
player1.attacks(player2) 
  if player2.life_points <= 0
  break
  end
  puts " "
  puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
  puts " "
  puts "Voici l'état de nos combattants :"
  puts " "
  puts player1.show_state
  puts player2.show_state 
  puts " "
  puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
puts " "
player2.attacks(player1) 
  if player1.life_points > 0
puts " "
puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
puts " "
  puts "Voici l'état de nos combattants :"
  puts " "
  puts player1.show_state
  puts player2.show_state 
  puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
  puts " "
  end
end
puts " "
puts "LE COMBAT EST TERMINE !"