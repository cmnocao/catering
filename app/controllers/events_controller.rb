class EventsController < ApplicationController
	
	before_action :set_event, only: [:show, :edit, :update]
	before_action :set_client, only: [:new, :show, :edit, :create, :update]
	
	def index
		@resource = request.path.split('/')[1]
		if @resource == "clients"
			@events = Event.where( "client_id = ?", params[:client_id] )
		elsif @resource == "venues"
			@events = Event.where( "venue_id = ?", params[:venue_id] )
		else
			@events = Event.all
		end
	end

	def new
		@event = Event.new
	end

	def show
		@resource = request.path.split('/')[1]
		if @resouce == "clients"
			@resource = Client.find( params[:client_id] )
		elsif @resource == "venues"
			@resource = Venue.find( params[:venue_id] )
		end	
	end

	def edit
	end

	def create
		@event = @client.events.new(event_params)
		if @event.save
			redirect_to client_events_path, notice: "Event created!"
		else
			render 'new'
		end
	end

	def update
    if @event.update(event_params)
      redirect_to client_event_path(@client, @event), notice: 'Event was successfully updated.'
    else
      render :edit
    end
  end

	private
	
	def set_event
		@event = Event.find( params[:id] )
	end

	def set_client
		@client = Client.find( params[:client_id] )
	end

  def event_params
    params.require(:event).permit(:name, :description, :typ, :venue_id, :start_time, :end_time)
  end

  
end
