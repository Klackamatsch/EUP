class Fundraising < ActiveRecord::Base


validates :name, presence: true


	def free?
		self.target_pledge_ammount.blank? || self.target_pledge_ammount.zero?     # das kommt aus dem helper 
		
	end

	def self.upcoming
	where("pledging_ends_on >= ? ", Time.now).order("pledging_ends_on")
		
	end




	
end
