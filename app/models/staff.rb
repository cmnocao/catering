class Staff < ActiveRecord::Base

	has_many	:addresses, as: :addressable
	has_many	:phones, as: :phoneable
	has_many	:emails, as: :emailable

	accepts_nested_attributes_for :addresses
	accepts_nested_attributes_for :phones
	accepts_nested_attributes_for :emails
	
	validates_presence_of :name
	belongs_to :events

end