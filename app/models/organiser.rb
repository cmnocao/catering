class Organiser < ActiveRecord::Base
	has_many :addresses, as: :addressable
	has_many :phones, as: :phoneable
	has_many :emails, as: :emailable
end