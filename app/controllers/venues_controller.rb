class VenuesController < ApplicationController

	def index
		@venues = Venue.all
	end

	def new
		@venue = Venue.new
	end

	def show
		@venue = Venue.find( params[:id] )
	end

	def create
		@venue = Venue.new(venue_params)

		if @venue.save
			redirect_to venues_path, notice: "Venue created!"
		else
			render 'new'
		end
	end

	private

  def venue_params
    params.require(:venue).permit(:name)
  end

end