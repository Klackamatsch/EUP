class Event < ActiveRecord::Base

	def free?
		self.price.blank? || self.price.zero?     # das kommt aus dem helper 
		
	end
end
