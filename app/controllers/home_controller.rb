class HomeController < ApplicationController
	def index
		@staffs = Staff.all
		@events = Event.all
	end
end
