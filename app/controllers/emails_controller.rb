class EmailsController < ApplicationController

	def index
		@emails = Email.all
	end

	def new
		@email = Email.new
	end

	def create
		@email = Email.new(email_params)

		if @email.save
			redirect_to emails_path, notice: "Email created!"
		else
			render action: 'new'
		end
	end

	private

  def email_params
    params.require(:email).permit(:email, :typ, :owner_id)
  end

end