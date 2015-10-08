class Movie
				#def title=(ptitle)
				#@title = ptitle
				#end
					attr_writer :title # attr_writer ersetzt die oberen 3 zeilen
				# def title
				# 	@title
				# end
				attr_reader :title   # attr_reader macht das selbe wie die methode über dem hier
				attr_accessor :title
	def initialize(ptitle,prank=0)
			puts"neues Objekt"
			@title = ptitle.capitalize
			@rank = prank
		end
def hit?
			if @rank >= 10
				true
			else
				false
			end
			
		end

	def thumbs_up
		@rank += 1
		#@rank = @rank +1
		end

	def thumbs_down
			@rank -= 1
			#@rank = @rank - 1

		end


	def to_s
			"#{@title} hat ein Ranking von: #{@rank}."

	
		end
	def status
		if hit? 
			"hit"
		else
			"flop"
		end
		
	end

	# def status
	# 	if hit? ? "hit" : "flop"			
	# 	end
	# end



end
