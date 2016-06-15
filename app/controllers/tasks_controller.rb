class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def edit
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      flash[:success] = "New task has been created!"
      redirect_to @task
    else
      render 'new'
    end
  end

  def update
    @task = Task.find(params[:id])

    if @task.update(task_params)
      flash[:success] = "Task has been updated!"
      redirect_to @task
    else
      render 'edit'
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    flash[:success] = "Task has been deleted!"
    redirect_to tasks_path
  end

  private
  def task_params
    params.require(:task).permit(:title, :description)
  end

end
