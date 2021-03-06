class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|

    	t.string	:name, null: false
    	t.string	:opening_time
    	t.string	:closing_time
    	t.text		:history
    	t.string	:website
        t.boolean   :active,    default: true

    	t.timestamps
    end
  end
end
