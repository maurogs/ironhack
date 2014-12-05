class Movie < ActiveRecord::Base
	def to_param
		"#{id}-#{self.title.parameterize}"
	end
end
