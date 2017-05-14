class TasksController < ApplicationController

  def index
    @tasks = Task.all 
    if params[:category]
      category = Category.find_by(name: params[:category])
      @task = tasks.event
    end
  end
   
  def new
    render "new.html.erb"
  end

  def create
    task = Task.new(
      description: params["description"],
      created_by: params["user_id"],
      event_id: params["event_id"],
      status: params["status"],
      )
    task.save
    
  end

  def show
    task_id = params[:id]
    @task = Task.find_by(id: task_id)
    volunteer = Volunteer.new(task_id: task.id, user_id: params["volunteer"])
    volunteer.save
    redirect_to "/tasks/#{task.id}"
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
    task.user_id = params[:user_id]
    task.event_id = params[:event_id]
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

