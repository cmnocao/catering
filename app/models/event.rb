class Event < ActiveRecord::Base
	belongs_to :venue
	belongs_to :client

	def venue?
		if venue_id != nil
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
	scope :past, lambda { where('end_time <= ?', Time.now) }
end