class ConfessionsController < ApplicationController 
	def index 
		@confession = Confession.all
	end 

	def new 
		@confession = Confession.new
	end 

	def create 
		@confession = Confession.create(confession_params) 
		redirect_to root_path
	end 

	private 
	def confession_params 
		params.require(:confession).permit(:confession)
	end
end
