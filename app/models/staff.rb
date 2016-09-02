class Staff < ActiveRecord::Base

	has_many	:addresses, as: :addressable
	has_many	:phones, as: :phoneable
	has_many	:emails, as: :emailable
	has_many	:categories, as: :categorizable

	accepts_nested_attributes_for :addresses
	accepts_nested_attributes_for :phones
	accepts_nested_attributes_for :emails
	accepts_nested_attributes_for :categories
	
	validates_presence_of :name
	belongs_to :staff_lists

end