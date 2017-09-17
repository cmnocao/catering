class EventsController < ApplicationController
	
	before_action :set_event, only: [:show, :edit, :update]
	before_action :set_client, only: [:new, :show, :edit, :create, :update]
	
	def index
		@resource = request.path.split('/')[1]
		if @resource == "clients"
			@events = Event.where( "client_id = ?", params[:client_id] )
		elsif @resource == "venues"
			@events = Event.where( "venue_id = ?", params[:venue_id] )
		elsif @resource == "staffs"
			@events = Staff.where( "staff_id = ?", params[:staff_id] )
		else
			@events = Event.all
		end
	end

	def new
		@event = Event.new
	end

	def list_all
		@events = Event.all
	end

	def show
		@resource = request.path.split('/')[1]
		if @resouce == "clients"
			@resource = Client.find( params[:client_id] )
		elsif @resource == "venues"
			@resource = Venue.find( params[:venue_id] )
		elsif @resource == "staffs"
			@resource = Staff.find( params[:staff_id] )
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
		@client = Client.find( params[:id] )
	end	

	def event_params
	  params.require(:event).permit(:name, :description, :typ, :venue_id, :client_id, :status, :start_time, :timing, :menu, :special_diets, :more_info)
	end

end