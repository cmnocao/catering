class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|

    	t.string	:name, null: false
    	t.boolean	:active, 	default: true

    	t.timestamps
    end
  end
end
