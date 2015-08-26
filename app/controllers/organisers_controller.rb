class OrganisersController < ApplicationController

	def index
		@organisers = Organiser.all
	end

	def new
		@organiser = Organiser.new
	end

	def create
		@organiser = Organiser.new(organiser_params)

		if @organiser.save
			redirect_to organisers_path, notice: "Organiser created!"
		else
			render action: 'new'
		end
	end

	private

  def organiser_params
    params.require(:organiser).permit(:name)
  end

end