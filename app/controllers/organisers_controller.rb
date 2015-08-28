class OrganisersController < ApplicationController

	before_filter :load_organiserable

	def index
		resource, id = request.path.split('/')[1,2]
		resource = resource.singularize.classify.constantize
		@client = resource.find(params[:client_id])
		@organisers = Organiser.where("organiserable_type = ? AND organiserable_id = ?", resource, id)
	end

	def new
		@organiser = @organiserable.organisers.new
	end

	def show
		@client = Client.find(params[:client_id])
		@client_organiser = @organiserable.organisers(@client)
	end


	def create
		@organiser = @organiserable.organisers.new(organiser_params)

		if @organiser.save
			redirect_to [@organiserable, :organisers], notice: "Organiser created!"
		else
			render 'new'
		end
	end

	def all
		@organisers = Organiser.all
	end

	private

		def load_organiserable
			unless request.path == "/organisers"
				resource, id = request.path.split('/')[1,2]
				@organiserable = resource.singularize.classify.constantize.find(id)
			end
		end

	  def organiser_params
	    params.require(:organiser).permit(:name)
	  end

end

# def index
# 	resource, id = request.path.split('/')[1,2]
# 	resource = resource.singularize.classify.constantize
# 	@client = resource.find(params[:client_id])
# 	@organisers = Organiser.where("organiserable_type = ? AND organiserable_id = ?", resource, id)
# end

# def index
# 	@organisers = @organiserable.organisers
# 	@organisers_by_client = Organiser.where("organiserable_id = ? AND organiserable_type = ?", params[:client_id], "Client")
# 	@organisers_by_venue = Organiser.where("organiserable_id = ? AND organiserable_type = ?", params[:venue_id], "Venue")
# end