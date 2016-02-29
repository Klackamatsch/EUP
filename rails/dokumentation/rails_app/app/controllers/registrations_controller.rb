class RegistrationsController < ApplicationController
	before_action :set_event
	before_action :require_signin
	def index
		@event = Event.find(params[:event_id])
		@registrations = @event.registrations
		
	end
	def show
		#@registration = Registrations.find(params[:registration_id])
		@registration = Registration.find(params[:id])
		
	end
	def new
	
		@registration = @event.registrations.new
	end
	def create
		@registration = @event.registrations.new(registration_params)
		@registration.user_id = current_user.id
		if @registration.save
			
			redirect_to event_path(@event.id), notice: "Registrierung erfolgreich"
		else
			render "new"
		end
		
	end
	def registration_params
		params.require(:registration).permit(:user_id,:event_id, :how_heard)
	end
def destroy
	registration = Registration.find(params[:id])
	registration.destroy
	redirect_to event_registrations_path(@event.id)
	
end

	def set_event
		@event = Event.find(params[:event_id])
	end
end
