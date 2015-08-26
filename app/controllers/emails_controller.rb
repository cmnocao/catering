class EmailsController < ApplicationController

	before_filter :load_emailable

	def index
		@emails = @emailable.emails
	end

	def new
		@email = @emailable.emails.new
	end

	def create
		@email = @emailable.emails.new(email_params)

		if @email.save
			redirect_to [@emailable, :emails], notice: "Email created!"
		else
			render 'new'
		end
	end

	private

		def load_emailable
			resource, id = request.path.split('/')[1,2]
			@emailable = resource.singularize.classify.constantize.find(id)
		end

	  def email_params
	    params.require(:email).permit(:email, :typ)
	  end

end