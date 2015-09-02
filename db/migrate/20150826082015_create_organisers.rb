class CreateOrganisers < ActiveRecord::Migration
  def change
    create_table :organisers do |t|
    	
    	t.string	:full_name, null: false
      t.boolean :active,  default: true
			
			t.belongs_to :organiserable, polymorphic: true

      t.timestamps
    end
    
    add_index :organisers, [:organiserable_id, :organiserable_type]
  end
end
