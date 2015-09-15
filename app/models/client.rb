class Client < ActiveRecord::Base
	has_many	:addresses, as: :addressable
	has_many	:phones, as: :phoneable
	has_many	:emails, as: :emailable
	has_many	:organisers, as: :organiserable

	accepts_nested_attributes_for :addresses
	accepts_nested_attributes_for :phones
	accepts_nested_attributes_for :emails

	has_many	:events

	validates_presence_of :name

end