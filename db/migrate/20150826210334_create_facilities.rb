class CreateFacilities < ActiveRecord::Migration
  def change
    create_table :facilities do |t|
    	
    	t.string	:name, 				null: false
    	t.text		:description
    	t.boolean	:active, 	default: true

    	t.timestamps
    end
  end
end
