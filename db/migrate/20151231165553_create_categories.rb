class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
    	
    	t.string	:name, null: false
    	t.boolean	:active, 	default: true

    	t.belongs_to :categorizable, polymorphic: true

    	t.timestamps
    end
    add_index :categories, [:categorizable_id, :categorizable_type]
  end
end