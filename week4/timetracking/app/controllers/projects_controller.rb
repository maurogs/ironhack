class ProjectsController < ApplicationController

	PER_PAGE = 5

	def index
		@projects = Project.order(created_at: :asc).limit(5)
		@projects_new = Project.last_created_projects(10)
		#render 'no_projects', layout: 'no_projects'
		

		if params[:page]
			page = params[:page].to_i
			#page = 1 if page == 0
			#page = params[:page].presence || 1
			#page = page.to_i	
			offset = (page-1) * PER_PAGE
			@projects = @projects.offset(offset)
		end
	end

	def show
		name = params[:name].titleize
		@project = Project.find_by(name: name)
	end

	def destroy
		project = Project.find params[:id]
		project.destroy
		redirect_to projects_path
	end
end
