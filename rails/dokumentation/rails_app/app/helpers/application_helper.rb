module ApplicationHelper

	def format_price(event)
		if
	event.free? 
	#"<strong>Free</strong>".html_safe
	content_tag(:strong, "FREE")
		else
	 number_to_currency(event.price, unit: "€")       # aus der view in den helper free ist im concerns event rb!!!
		end																							# dieser code ist die verlängerung der format_price
	end	

																								# kommt aus der view . da drin ist ein free? das wird n concerns event.rb genutzt

	def image_for(event)
	if event.image_file.blank?
		image_tag 'dummy.jpg' 
	else
		image_tag event.image_file
	end	
	end																						
end
