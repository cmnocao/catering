class ClientsController < ApplicationController

	before_action :set_client, only: [:show, :edit, :update]

	def index
		@clients = Client.all
	end

	def new
		@client = Client.new
		@client.phones.build
		@client.emails.build
		@client.addresses.build
	end

	def show
	end

	def edit
	end

	def create
		@client = Client.new(client_params)

		if @client.save
			redirect_to clients_path, notice: "Client created!"
		else
			render 'new'
		end
	end
	
	def update
    if @client.update(client_params)
      redirect_to @client, notice: 'Client was successfully updated.'
    else
      render :edit
    end
  end

	private

	def set_client
		@client = Client.find(params[:id])
	end

  def client_params
    params.require(:client).permit(:name, 
    															 phones_attributes:  [ :id, :idd, :number, :typ ],
    															 emails_attributes:  [ :id, :email, :typ ],
																	 addresses_attributes: [	:id, :line1, :line2, :postcode, :city, :state, :country_id ])
  end
end