class Phone < ActiveRecord::Base
	
	belongs_to :phoneable, polymorphic: true

	validates_presence_of [:idd, :number, :typ]
	validates :number, length: { in: 10..11 }, numericality: { only_integer: true }, uniqueness: true

	def full_number
		"(" + idd + ") " + number
	end

end
