class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      
      t.string 	:line1, null: false
      t.string 	:line2
      t.string 	:postcode, null: false
      t.string 	:city, null: false
      t.string 	:state
      t.string 	:country, null: false
      t.belongs_to :addressesable, polymorphic: true

      t.timestamps
    end
    
    add_index :addresses, [:addressesable_id, :addressesable_type]
  end

  def down
    drop_table :addresses
  end
end
