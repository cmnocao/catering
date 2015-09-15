class Address < ActiveRecord::Base
	belongs_to :addressable, polymorphic: true
	belongs_to :country

	validates_presence_of [:line1, :postcode, :city, :country_id]
	validates :email, uniqueness: true

	def display_address
		"#{line1}" + " * " + "#{city}"
	end
end