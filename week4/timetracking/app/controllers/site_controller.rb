class SiteController < ApplicationController
	def home
		@projects_new = Project.last_created_projects(10)
	end

	def contact
	end
end
