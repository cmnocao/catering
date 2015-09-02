class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|

    	t.string	:full_name,   null: false
    	t.text		:description
    	t.integer	:client_id,   null: false
        t.integer   :venue_id,    null: false
    	t.boolean	:active, 	  default: true


    	t.timestamps
    end
    add_index :events, :client_id
  end
end
