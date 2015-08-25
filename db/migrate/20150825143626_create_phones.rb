class CreatePhones < ActiveRecord::Migration
  def up
    create_table :phones do |t|
    	
    	t.string	:idd, null: false
    	t.string 	:number, null: false
      t.string 	:typ, null: false
    	t.integer :owner_id, null: false

      t.timestamps
    end
    
    add_index :phones, :owner_id
  
  end

  def down
  	drop_table :phones
  end
end