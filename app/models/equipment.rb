class Equipment < ActiveRecord::Base
	
	has_many :categories, as: :categorizable

	validates_presence_of :name

end