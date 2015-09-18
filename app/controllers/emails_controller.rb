class EmailsController < ApplicationController

	before_filter :load_emailable
	before_action :set_email, only: [:show, :edit, :update]

	def index
		@emails = @emailable.emails
	end

	def new
		@email = @emailable.emails.new
	end

	def show
  end

  def edit
  end

	def create
		@email = @emailable.emails.new(email_params)

		if @email.save
			redirect_to [@emailable, :emails], notice: "Email created!"
		else
			render 'new'
		end
	end

	def update
    if @email.update(email_params)
      redirect_to [@emailable, :emails], notice: 'Email was successfully updated.'
    else
      render :edit
    end
  end

	private

		def set_email
      @email = Email.find(params[:id])
    end

		def load_emailable
			resource, id = request.path.split('/')[1,2]
			@emailable = resource.singularize.classify.constantize.find(id)
		end

	  def email_params
	    params.require(:email).permit(:email, :typ)
	  end

end