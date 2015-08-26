class Venue < ActiveRecord::Base
	has_many	:addresses, as: :addressable
	has_many	:phones, as: :phoneable
	has_many	:emails, as: :emailable
	has_many	:organisers, as: :organiserable

	has_many	:events
end