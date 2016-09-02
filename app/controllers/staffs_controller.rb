class StaffsController < ApplicationController

	before_action :set_staff, only: [:show, :edit, :update]

	def index
		@staffs = Staff.all

		smart_listing_create :staffs, Staff.all, partial: "staffs/list", default_sort: {name: "asc"}
	end

	def new
		@staff = Staff.new
		@staff.phones.build
		@staff.emails.build
		@staff.addresses.build
		@staff.categories.build
	end

	def show
	end

	def edit
	end

	def create
		@staff = Staff.new(staff_params)

		if @staff.save
			redirect_to staffs_path, notice: "Staff created!"
		else
			render 'new'
		end
	end
	
	def update
    if @staff.update(staff_params)
      redirect_to @staff, notice: 'Staff was successfully updated.'
    else
      render :edit
    end
  end

	private

	def set_staff
		@staff = Staff.find(params[:id])
	end

  def staff_params
    params.require(:staff).permit(:name, 
    															 categories_attributes: [ :id, :name ],
    															 phones_attributes:  		[ :id, :idd, :number, :typ ],
    															 emails_attributes:  		[ :id, :email, :typ ],
																 addresses_attributes: 	[	:id, :line1, :line2, :postcode, :city, :state, :country_id ])
  end
end