class PhonesController < ApplicationController

	before_filter :load_phoneable
	before_action :set_phone, only: [:show, :edit, :update]

	def index
		@phones = @phoneable.phones
	end

	def new
		@phone = @phoneable.phones.new
	end

	def show
  end

  def edit
  end

	def create
		@phone = @phoneable.phones.new(phone_params)

		if @phone.save
			redirect_to [@phoneable, :phones], notice: "Phone created!"
		else
			render 'new'
		end
	end

	def update
    if @phone.update(phone_params)
      redirect_to [@phoneable, :phones], notice: 'Phone was successfully updated.'
    else
      render :edit
    end
  end

	private

		def set_phone
			@phone = Phone.find(params[:id])
		end

		def load_phoneable
			resource, id = request.path.split('/')[1,2]
			@phoneable = resource.singularize.classify.constantize.find(id)
		end

	  def phone_params
	    params.require(:phone).permit(:idd, :number, :typ)
	  end

end