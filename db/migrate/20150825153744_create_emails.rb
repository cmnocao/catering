class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|

    	t.string	:email
    	t.string	:typ
    	t.integer	:owner_id

    	t.timestamps
    end

    add_index :emails, :owner_id
  
  end

  def down
  	drop_table :emails
  end
end