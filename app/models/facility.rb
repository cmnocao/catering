class Facility < ActiveRecord::Base
	has_many :facilitizations
	has_many :venues, :through => :facilitizations
end