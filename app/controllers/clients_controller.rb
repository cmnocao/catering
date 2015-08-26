class ClientsController < ApplicationController

	def index
		@clients = Client.all
	end

	def new
		@client = Client.new
	end

	def show
		@client = Client.find(params[:id])
	end

	def create
		@client = Client.new(client_params)

		if @client.save
			redirect_to clients_path, notice: "Client created!"
		else
			render action: 'new'
		end
	end

	private

  def client_params
    params.require(:client).permit(:name)
  end

end