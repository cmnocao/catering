class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|

    	t.string	:full_name, null: false
    	
    	t.boolean	:active, 	default: true

    	t.timestamps
    end
  end
end
