class ProjectsController < ApplicationController
  def index
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create 
    @project = Project.new(params[:project])
    if @project.save
      redirect_to project_path(@project),:notice=>'project has been created'
    else
      render :action=>:new
    end
  end
end
