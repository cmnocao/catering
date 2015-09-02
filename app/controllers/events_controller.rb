class EventsController < ApplicationController

	def index
		@events = Event.all
		@events_by_client = Event.where("client_id = ?", params[:client_id])
	end

	def new
		@client = Client.find( params[:client_id] )
		@event = Event.new
	end

	def show
		@client = Client.find( params[:client_id] )
		@event = Event.find(params[:id])
	end

	def create
		@client = Client.find( params[:client_id] )
		@event = @client.events.new(event_params)
		if @event.save
			redirect_to client_events_path, notice: "Event created!"
		else
			render 'new'
		end
	end

	def all
		@events = Event.all
	end

	private

  def event_params
    params.require(:event).permit(:name)
  end
end

