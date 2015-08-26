class EventsController < ApplicationController

	def index
		@events = Event.all
	end

	def new
		@client = Client.find( params[:client_id] )
		@event = Event.new
	end

	def create
		@client = Client.find( params[:client_id] )
		@event = @client.events.new(event_params)
		if @event.save
			redirect_to events_path, notice: "Event created!"
		else
			render 'new'
		end
	end

	private

  def event_params
    params.require(:event).permit(:name)
  end
end

