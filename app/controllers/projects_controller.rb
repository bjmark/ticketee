class ProjectsController < ApplicationController
  before_filter :find_project, :only=>[:show,:edit,:update,:destroy]
  before_filter :authorize_admin!,:except=>[:index,:show]

  def index
    @projects = Project.all
  end

  def show
  end

  def new
    @project = Project.new
  end

  def edit
  end

  def update
    @project.name = params[:project][:name]
    if @project.save
      redirect_to project_path(@project)
    else
      render :action=>edit
    end
  end

  def create 
    @project = Project.new(params[:project])
    if @project.save
      redirect_to project_path(@project),:notice=>'project has been created'
    else
      render :action=>:new
    end
  end

  def destroy
    if @project.destroy
      redirect_to projects_path
    else
      render :action=>'show'
    end
  end

  private 
  def find_project
    @project = Project.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = 'The project you were looking for could not be found'
    redirect_to projects_path
  end
end
