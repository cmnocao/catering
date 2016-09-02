class Category < ActiveRecord::Base

	belongs_to :categorizable, polymorphic: true
	
	validates_presence_of :name

end