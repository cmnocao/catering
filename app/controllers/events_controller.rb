class EventsController < ApplicationController

	def index

		@resource = request.path.split('/')[1]
		if @resource == "clients"
			@events_count = Event.where( "client_id = ?", params[:client_id] )
			@events = Event.where( "client_id = ?", params[:client_id] )
		elsif @resource == "venues"
			@events_count = Event.where( "venue_id = ?", params[:venue_id] )
			@events = Event.where( "venue_id = ?", params[:venue_id] )
		end
	end

	def new
		@client = Client.find( params[:client_id] )
		@event = Event.new
	end

	def show
		@resource = request.path.split('/')[1]
		if @resouce == "clients"
			@resource = Client.find( params[:client_id] )
		elsif @resource == "venues"
			@resource = Venue.find( params[:venue_id] )
		end	
		@event = Event.find( params[:id] )
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
    params.require(:event).permit(:name, :description, :typ, :date)
  end
end

