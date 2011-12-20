class TicketsController < ApplicationController
  before_filter :find_project,:only=>[:show,:new,:create]

  def show
    @ticket = @project.tickets.find(params[:id])
  end

  def new
    @ticket = @project.tickets.new
  end

  def create
    @ticket = @project.tickets.new(params[:ticket])

    if @ticket.save
      redirect_to project_ticket_path(@project,@ticket)
    else
      render :action=>:new
    end
  end

  private 

  def find_project
    @project = Project.find(params[:project_id])
  end
end
