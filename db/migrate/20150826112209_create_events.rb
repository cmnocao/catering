class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|

    	t.string	:name,        null: false
    	t.text		:description
        t.string    :typ,         null: false
    	t.integer	:client_id,   null: false
        t.integer   :venue_id
    	t.boolean	:active, 	  default: true
        t.datetime  :start_time
        t.datetime  :end_time

    	t.timestamps
    end
    add_index :events, :client_id
  end
end
