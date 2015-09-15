class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      
      t.string 	:line1,     null: false
      t.string 	:line2
      t.string 	:postcode,  null: false
      t.string 	:city,      null: false
      t.string 	:state
      t.string 	:country_id,   null: false
      t.boolean :active,  default: true
      
      t.belongs_to :addressable, polymorphic: true

      t.timestamps
    end

    add_index :addresses, :addressable_id
    add_index :addresses, :addressable_type
    add_index :addresses, :country_id
    
  end
end
