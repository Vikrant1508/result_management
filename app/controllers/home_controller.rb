class HomeController < ApplicationController
	def index
	end
	def new
	end
	def edit
  		@home = Home.find(params[:id])
	end
	def destroy
  		@home = Home.find(params[:id])
  		@home.destroy
 
  		redirect_to home_path
	end
	
end