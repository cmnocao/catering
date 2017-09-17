class Event < ActiveRecord::Base
	belongs_to :venue
	belongs_to :client
	has_one :staff_list

	def venue?
		if venue != nil
			true
		end
	end

	def upcoming?
		if start_time >= Time.now
			true
		else
			false
		end
	end

	scope :upcoming, lambda { where('start_time >= ?', Time.now) }
	scope :past, lambda { where('start_time <= ?', Time.now) }
end