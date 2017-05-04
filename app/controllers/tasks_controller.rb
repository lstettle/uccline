class TasksController < ApplicationController
  def index
    @tasks = Task.all
    render "index.html.erb"
  end

  def new
    render "new.html.erb"
  end

  def create
    task = Task.new(
      description: params["description"],
      status: params["status"],
      )
    task.save
    redirect_to "/tasks/#{task.id}"
  end

  def show
    task_id = params[:id]
    @task = Task.find_by(id: task_id)
    render "show.html.erb"
  end

  def edit
    task_id = params[:id]
    @task = Task.find_by(id: task_id)
    render "edit.html.erb"
  end

  def update
    task_id = params[:id]
    task = Task.find_by(id: task_id)
    task.description = params[:description]
    task.status = params[:status]
    task.save
    redirect_to "/tasks/#{task.id}"
  end

  def destroy
    task_id = params[:id]
    task = Task.find_by(id: task_id) 
    task.destroy
    render "destroy.html.erb"
  end
end

