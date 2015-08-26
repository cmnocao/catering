class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|

    	t.string	:email
    	t.string	:typ
      t.belongs_to :emailable, polymorphic: true

      t.timestamps
    end
    
    add_index :emails, [:emailable_id, :emailable_type]
  
  end
end