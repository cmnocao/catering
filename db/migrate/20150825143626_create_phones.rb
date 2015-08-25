class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
    	
    	t.string	:idd, null: false
    	t.string 	:number, null: false
      t.string 	:typ, null: false
      t.belongs_to :phoneable, polymorphic: true

      t.timestamps
    end
    
    add_index :phones, [:phoneable_id, :phoneable_type]
  
  end

  def down
  	drop_table :phones
  end
end