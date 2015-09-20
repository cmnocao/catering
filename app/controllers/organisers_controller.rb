class OrganisersController < ApplicationController

	before_filter :load_organiserable
	before_action :set_organiser, only: [:show, :edit, :update]

	def index
		resource, id = request.path.split('/')[1,2]
		resource = resource.singularize.classify.constantize
		@resource = resource.find(id)
		@organisers = Organiser.where("organiserable_type = ? AND organiserable_id = ?", resource, id)
	end

	def new
		@organiser = @organiserable.organisers.new
		@organiser.phones.build
		@organiser.emails.build
		@organiser.addresses.build
	end

	def show
		@organiser = Organiser.find( params[:id] )
	end

	def edit
	end

	def create
		@organiser = @organiserable.organisers.new(organiser_params)

		if @organiser.save
			redirect_to [@organiserable, :organisers], notice: "Organiser created!"
		else
			render 'new'
		end
	end

	def update
		if @organiser.update(organiser_params)
      redirect_to @organiser, notice: 'Organiser was successfully updated.'
    else
      render :edit
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
	    params.require(:organiser).permit(:name, 
    															 phones_attributes:  [ :idd, :number, :typ ],
    															 emails_attributes:  [ :email, :typ ],
																	 addresses_attributes: [	:line1, :line2, :postcode, :city, :state, :country_id ])
	  end

	  def set_organiser
		@organiser = Organiser.find(params[:id])
	end
end