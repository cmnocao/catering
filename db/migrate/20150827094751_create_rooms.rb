class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|

    	t.string	:name
    	t.text		:description
    	t.integer	:venue_id, 		null: false

    	t.timestamps
    end
  end
end
