class ProjectsController < ApplicationController

def index
	@fundraisings = Fundraising.all
end

def edit
	@fundraising = Fundraising.find(params[:id])
end


	def display
		
	end

	def set_up
		
	end

	private
	def fundraising_params
		permitted_params = params.require(:fundraising).permit(:name, :description, :target_pledge_ammount, :website, :pledging_ends_on)
	end
end
