class Venue < ActiveRecord::Base
	
	# Associations

	has_many	:addresses, as: :addressable
	has_many	:phones, as: :phoneable
	has_many	:emails, as: :emailable
	has_many	:organisers, as: :organiserable

	has_many	:events
	has_many	:rooms
	has_many 	:facilitizations
	has_many 	:facilities, :through => :facilitizations

	#----------------------------
	
	# Validations

	validates_presence_of	:name

	#----------------------------
	
	# Methods

	def opening_closing
		if opening_time != nil && opening_time != nil
			"#{opening_time} - #{closing_time}"
		else
			false
		end
	end

	def short_name
		short = name.split(" ")
		short = short[0]
	end

	#----------------------------

end