class Game
	attr_accessor :title
	attr_accessor :players
		def initialize(title)
			@title = title
			@players = []
		
		end

		def add_player(player)
				@players << player
			
		end

		def to_s
			"#{@title} #{@players}"
			
		end

		def play
			puts "there are #{@players.count} players in #{@title} "
		 		@players.each do |dings|
		 		dings.to_s
		 									end

		 		@players.each	 do |bums|
		 				bums.blam
		 												2.times do 
		 													bums.w00t
		 																end
		 				bums.to_s
		 									end

		end
		


	end
