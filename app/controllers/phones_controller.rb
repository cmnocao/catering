class PhonesController < ApplicationController

	before_filter :load_phoneable

	def index
		@phones = @phoneable.phones
	end

	def new
		@phone = @phoneable.phones.new
	end

	def create
		@phone = @phoneable.phones.new(phone_params)

		if @phone.save
			redirect_to [@phoneable, :phones], notice: "Phone created!"
		else
			render 'new'
		end
	end

	private

		def load_phoneable
			resource, id = request.path.split('/')[1,2]
			@phoneable = resource.singularize.classify.constantize.find(id)
		end

	  def phone_params
	    params.require(:phone).permit(:idd, :number, :typ)
	  end

end