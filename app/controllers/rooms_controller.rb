class RoomsController < ApplicationController

	def index
		@rooms = Room.all
	end

	def new
		@venue = Venue.find( params[:venue_id] )
		@room = Room.new
	end

	def show
		@room = Room.find( params[:id] )
	end

	def create
		@venue = Venue.find( params[:venue_id] )
		@room = @venue.rooms.new(room_params)

		if @room.save
			redirect_to venue_rooms_path, notice: "Room created!"
		else
			render 'new'
		end
	end

	private

	  def room_params
	    params.require(:room).permit(:name, :description)
	  end

end
