class OrganisersController < ApplicationController

	before_filter :load_organiserable

	def index
		@organisers = @organiserable.organisers
	end

	def new
		@organiser = @organiserable.organisers.new
	end

	def create
		@organiser = @organiserable.organisers.new(organiser_params)

		if @organiser.save
			redirect_to [@organiserable, :organisers], notice: "Organiser created!"
		else
			render 'new'
		end
	end

	private

		def load_organiserable
			resource, id = request.path.split('/')[1,2]
			@organiserable = resource.singularize.classify.constantize.find(id)
			puts @organiserable
		end

	  def organiser_params
	    params.require(:organiser).permit(:name)
	  end

end