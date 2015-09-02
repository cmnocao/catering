class CreateFacilitizations < ActiveRecord::Migration
  def change
    create_table :facilitizations do |t|

    	t.belongs_to :venue, index: true
      t.belongs_to :facility, index: true
      
      t.timestamps
    end
  end
end
