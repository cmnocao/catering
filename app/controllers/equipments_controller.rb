class EquipmentsController < ApplicationController

	before_action :set_equipment, only: [:show, :edit, :update]

	def index
		@equipments = Equipment.all
	end

	def new
		@equipment = Equipment.new
	end

	def show
	end

	def edit
	end

	def create
		@equipment = Equipment.new(equipment_params)

		if @equipment.save
			redirect_to equipments_path, notice: "Equipment created!"
		else
			render 'new'
		end
	end
	
	def update
    if @equipment.update(equipment_params)
      redirect_to @equipment, notice: 'Equipment was successfully updated.'
    else
      render :edit
    end
  end

	private

	def set_equipment
		@equipment = Equipment.find(params[:id])
	end

	def equipment_params
		params.require(:equipment).permit(:name)
	end
end