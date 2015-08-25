class AddressesController < ApplicationController

  def index
    @addresses = Address.all
  end

  def show
  end

  def new
    @address = Address.new
  end

  def edit
  end

  def create
    @address = Address.new(address_params)

    if @address.save
      redirect_to addresses_path, notice: 'Address was successfully created.'
    else
      render action: 'new'
    end
  end

  private
  def set_address
    @address = Address.find(params[:id])
  end

  def address_params
    params.require(:address).permit(:line1, :line2, :postcode, :city, :state, :country, :owner_id)
  end
end
