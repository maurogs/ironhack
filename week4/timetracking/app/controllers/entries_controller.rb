class EntriesController < ApplicationController
	before_filter :load_project 
	before_filter :load_entries, except: [:index, :new, :create]

	def index
		#@project = Project.find params[:id]
		#@entries = @project.entries
		@projects_new = Project.last_created_projects(10)
		#@project = Project.find params[:project_id]
		@entries = @project.entries.current_month_entries
		@total_hours = @project.total_hours_in_month(Date.today.month,Date.today.year)
	end

	def new
		#@project = Project.find params[:project_id]
		@entry = @project.entries.new
	end

	def create
		#@project = Project.find params[:project_id]
		@entry = @project.entries.new entry_params

		if @entry.save
			UserMailer.new_entry(@project).deliver
			flash[:notice] = "Project created successfully"
			#redirect_to project_entries_path(project)
			#redirect_to action: 'index', controller: 'entries', project_id: @project.id
			redirect_to project_entries_path(@project)
		else
			flash.now[:error] = "Try Again"
			render 'new'
		end
	end

	def edit
		#@project = Project.find params[:project_id]
		#@entry = @project.entries.find params[:id]
	end

	def update
		#@project = Project.find params[:project_id]
		#@entry = @project.entries.find params[:id]

		if @entry.update_attributes(entry_params)
			flash[:notice] = "Project updated successfully"
			redirect_to action: 'show', controller: 'entries', project_id: @project.id
		else
			flash.now[:error] = 'Try Again'
			render 'edit'
		end
	end

	def show
		#@project = Project.find params[:project_id]
		#@entry = @project.entries.find params[:id]
	end

	def destroy
		#@project = Project.find params[:project_id]
		#@entry = @project.entries.find params[:id]
		@entry.destroy
		redirect_to project_entries_path(@project)
	end


	private

	def entry_params
		params.require(:entry).permit(:hours, :minutes, :date, :poster)
	end

	def load_project
		@project = Project.find params[:project_id]
	end

	def load_entries
		@entry = @project.entries.find params[:id]
	end

end


