class EventsController < ApplicationController
  def index
	  @events = Event.order("number")
	end
	
	def search
	  @events = Event.search(params[:q])
		render "index"
	end
	
	def show
	  @event = Event.find(params[:id])
		
		###タグ取得
		@tags = Event.getTags(@event)
		
		###Ranking取得
		@rankings = Event.order("ranking").reverse_order
		
		###Recent取得
		@recents = Event.order("updated_at").reverse_order
		
		###Related取得
		@relateds = Event.getRelateds(@tags)
		
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
