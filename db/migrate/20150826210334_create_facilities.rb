class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
    	
    	t.string	:full_name, 				null: false
    	t.text		:description
    	t.boolean	:active, 	default: true

    	t.timestamps
    end
  end
end
