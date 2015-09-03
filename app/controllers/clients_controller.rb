class ClientsController < ApplicationController

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
		@client = Client.find(params[:id])
	end

	def create
		@client = Client.new(client_params)

		if @client.save
			redirect_to clients_path, notice: "Client created!"
		else
			render 'new'
		end
	end

	private

  def client_params
    params.require(:client).permit(:name, 
    															 phones_attributes:  [ :idd, :number, :typ ],
    															 emails_attributes:  [ :email, :typ ],
																	 addresses_attributes: [	:line1, :line2, :postcode, :city, :state, :country ])
  end
end