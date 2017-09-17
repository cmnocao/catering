class CreateEquipments < ActiveRecord::Migration
  def change
    create_table :equipments do |t|
    	
    	t.integer	:category,	  null: false
    	t.string	:name,        null: false

    	t.timestamps
    end
  end
end