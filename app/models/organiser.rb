class Organiser < ActiveRecord::Base
	belongs_to :organiserable, polymorphic: true
	has_many :addresses, as: :addressable
	has_many :phones, as: :phoneable
	has_many :emails, as: :emailable
end