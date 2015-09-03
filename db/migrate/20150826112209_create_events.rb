class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|

    	t.string	:name,   null: false
    	t.text		:description
    	t.integer	:client_id,   null: false
        t.integer   :venue_id
    	t.boolean	:active, 	  default: true


    	t.timestamps
    end
    add_index :events, :client_id
  end
end
