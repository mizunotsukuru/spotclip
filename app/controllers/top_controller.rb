class TopController < ApplicationController
  def index
	end
	
	def search
		render :action => 'events/search'
	end
	
	def show
	  @event = Event.find(params[:id])
	end
	
	def new
	end
	
	def edit
	end
	
	def create
	end
	
	def update
	end
	
	def destroy
	end
end
