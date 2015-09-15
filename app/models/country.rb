class Country < ActiveRecord::Base

	has_many :addresses

	def country_idd
		"#{name } #{idd}"
	end

end