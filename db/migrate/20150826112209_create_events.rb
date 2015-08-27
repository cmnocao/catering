class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|

    	t.string	:name, 			null: false
    	t.integer	:client_id, null: false
    	t.string	:opening_time
    	t.string	:closing_time
    	t.text		:history
    	t.string	:cost

    	t.timestamps
    end
    add_index :events, :client_id
  end
end
