class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|

    	t.string	:name,   null: false
    	t.text		:description
    	t.boolean	:layouts, 	  default: false
    	t.integer	:venue_id,    null: false
    	t.boolean	:active, 	  default: true

    	t.timestamps
    end
  end
end
