class Address < ActiveRecord::Base
	
	belongs_to :addressable, polymorphic: true
	belongs_to :country

	validates_presence_of [:line1, :postcode, :city, :country_id]

	def full_address
		"#{line1} - #{line2} - #{postcode} - #{city} - #{state} - #{country.name}"
	end

	def short_address
		"#{line1} - #{postcode} - #{city}"
	end
end