class Email < ActiveRecord::Base
	belongs_to :emailable, polymorphic: true

	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
	validates_presence_of [:email, :typ]
end