class Movie < ActiveRecord::Base
	has_many :reviews
	def flop?
		self.total_gross.blank? || self.total_gross < 50000000

		
	end

	def self.upcoming
	where("kinostart <= ? ", Time.now).order("kinostart")
		
	end
end
