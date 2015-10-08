class Player
attr_accessor :name, :health, :score
		def initialize(name, health = 100, score=0)
			@name = name
			@health = health
			@score = score
		end




		def to_s
 				puts "Ich bin #{@name} mit einer Gesundheit von #{@health} und einem Score von #{@score}"
 		end

 		def blam
 				@health -= 10
 				puts "#{@name} wurde um 10 geblamt!!! Aktueller stand:#{@health}"
 		end
		def w00t
								@health += 10
						
								puts "#{@name} wurde um 10 gew00ted aktueller Stand: #{@health}"
		end
		# def player_spec
		# 	
		# 	if health < 100 
		# 		puts "#{@name} ist strong"
		# 	else
		# 		puts "#{@name} ist wimpy"
		# 	end
			
		# end
		# def strong?
			
			
		# end
					

end

# Player-Class
# In der player_spec muss also zuerst ein Kontext geschaffen werden, in der die Methode strong? abgefragt wird.
# Ist die eigenschaft health > 100, dann ist der Spieler strong, andernfalls wimpy.