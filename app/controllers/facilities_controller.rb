class FacilitiesController < ApplicationController

	def index
		@facilities = Facility.all
	end

	def new
		@facility = Facility.new
	end

	def show
		@facility = Facility.find(params[:id])
	end

	def create
		@facility = Facility.new(facility_params)

		if @facility.save
			redirect_to facilities_path, notice: "Facility created!"
		else
			render 'new'
		end
	end

	private

  def facility_params
    params.require(:facility).permit(:name, :description)
  end

end