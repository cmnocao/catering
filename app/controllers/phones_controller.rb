class PhonesController < ApplicationController

	def index
		@phones = Phone.all
	end

	def new
		@phone = Phone.new
	end

	def create
		@phone = Phone.new(phone_params)

		if @phone.save
			redirect_to root_path, notice: "Phone created!"
		else
			render action: 'new'
		end
	end

	private

  def phone_params
    params.require(:phone).permit(:idd, :number, :typ, :owner_id)
  end

end