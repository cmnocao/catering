class CreateCountries < ActiveRecord::Migration
  
  def change
    create_table :countries do |t|
      t.string 	:name, null: false
      t.string 	:iso2, null: false
      t.string 	:iso3, null: false
      t.string 	:capital_name
      t.boolean :enabled, null: false
      t.string 	:nationality
      t.string	:idd

      t.timestamps
    end
  end

end