class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|

    	t.string	:name,        null: false
    	t.text		:description
        t.string    :typ,         null: false
    	t.integer	:client_id,   null: false
        t.integer   :venue_id
        t.text      :timing
        t.text      :menu
        t.text      :special_diets
        t.text      :more_info
        t.string    :status,      null: false
        t.datetime  :start_time

    	t.timestamps
    end
    add_index :events, :client_id
  end
end
