class CreateOrganisers < ActiveRecord::Migration
  def change
    create_table :organisers do |t|
    	
    	t.string	:name, null: false
			
			t.belongs_to :organiserable, polymorphic: true

      t.timestamps
    end
    
    add_index :organisers, [:organiserable_id, :organiserable_type]
  end
end
