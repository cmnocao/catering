class AddressesController < ApplicationController

  before_filter :load_addressable

  def index
    @addresses = @addressable.addresses
  end

  def new
    @address = @addressable.addresses.new
  end

  def create
    @address = @addressable.addresses.new(address_params)

    if @address.save
      redirect_to [@addressable, :addresses], notice: "Address created!"
    else
      render 'new'
    end
  end

  private

    def load_addressable
      resource, id = request.path.split('/')[1,2]
      @addressable = resource.singularize.classify.constantize.find(id)
    end

    def address_params
      params.require(:address).permit(:line1, :line2, :postcode, :city, :state, :country)
    end

end