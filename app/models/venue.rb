class Venue < ActiveRecord::Base
	has_many	:addresses, as: :addressable
	has_many	:phones, as: :phoneable
	has_many	:emails, as: :emailable
	has_many	:organisers, as: :organiserable

	has_many	:events
	has_many	:rooms
	has_many :facilitizations
	has_many :facilities, :through => :facilitizations
end