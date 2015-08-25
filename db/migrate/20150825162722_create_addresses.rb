class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      
      t.string 	:line1, null: false
      t.string 	:line2
      t.string 	:postcode, null: false
      t.string 	:city, null: false
      t.string 	:state
      t.string 	:country, null: false
      t.integer :owner_id, null: false
      
      t.timestamps
    end

    add_index :addresses, :owner_id
  end

  def down
    drop_table :addresses
  end
end
