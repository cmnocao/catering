class AddressesController < ApplicationController

  before_filter :load_addressable
  before_action :set_address, only: [:show, :edit, :update]
  
  def index
    @addresses = @addressable.addresses
  end

  def new
    @address = @addressable.addresses.new
  end

  def show
  end

  def edit
  end

  def create
    @address = @addressable.addresses.new(address_params)

    if @address.save
      redirect_to [@addressable, :addresses], notice: "Address created!"
    else
      render 'new'
    end
  end

  def update
    if @address.update(address_params)
      redirect_to [@addressable, :addresses], notice: 'Address was successfully updated.'
    else
      render :edit
    end
  end
  
  private

    def set_address
      @address = Address.find(params[:id])
    end

    def load_addressable
      resource, id = request.path.split('/')[1,2]
      @addressable = resource.singularize.classify.constantize.find(id)
    end

    def address_params
      params.require(:address).permit(:line1, :line2, :postcode, :city, :state, :country_id)
    end

end