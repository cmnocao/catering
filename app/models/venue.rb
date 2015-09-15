class Venue < ActiveRecord::Base
	
	# Associations

	has_many	:addresses, as: :addressable
	has_many	:phones, as: :phoneable
	has_many	:emails, as: :emailable
	has_many	:organisers, as: :organiserable

	has_many	:events
	has_many	:rooms
	has_many :facilitizations
	has_many :facilities, :through => :facilitizations

	#----------------------------
	
	# Validations

	validates_presence_of	:name

	#----------------------------
	
	# Methods

	def opening_closing
		if self.opening_time != nil and self.opening_time != nil
			self.opening_time + " - " + self.closing_time
		else
			false
		end
	end

	#----------------------------

end