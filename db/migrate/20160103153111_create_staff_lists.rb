class CreateStaffLists < ActiveRecord::Migration
  def change
    create_table :staff_lists do |t|
    	
    	t.string	:name, null: false
    	
    	t.timestamps
    end
  end
end
