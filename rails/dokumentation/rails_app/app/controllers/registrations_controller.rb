class RegistrationsController < ApplicationController
	before_action :set_event
	def index

		@registrations =@event.registrations
		
	end
	def new
	
		@registration = @event.registrations.new
	end
	def create
		@registration = @event.registrations.new(registration_params)
		if @registration.save
			
			redirect_to event_path(@event.id), notice: "Registrierung erfolgreich"
		else
			render "new"
		end
		
	end
	def registration_params
		params.require(:registration).permit(:name, :email, :how_heard)
	end


	def set_event
		@event = Event.find(params[:event_id])
	end
end
