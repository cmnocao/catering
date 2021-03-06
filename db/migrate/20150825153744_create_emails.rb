class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|

    	t.string	:email, 	null: false
    	t.string	:typ, 		null: false
    	t.boolean	:active, 	default: true
      
      t.belongs_to :emailable, polymorphic: true

      t.timestamps
    end
    
    add_index :emails, [:emailable_id, :emailable_type]
  
  end
end