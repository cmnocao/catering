class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|

    	t.string	:name, 			null: false
    	t.integer	:event_id, 	null: false

    	t.timestamps
    end
    add_index :venues, :event_id
  end
end
