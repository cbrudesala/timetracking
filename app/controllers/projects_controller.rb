class ProjectsController < ApplicationController

	before_action :authenticate_user!

	def index
		@projects = Project.last_created_projects(5)
		render 'no_projects' if @projects.empty?
	end

	def show
		@project = Project.find_by id: params[:id]
		render 'no_projects_found' unless @project
	end
end
