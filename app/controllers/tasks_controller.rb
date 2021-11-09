class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end 

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path(@task)
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task.destroy
  end
  
  private
  
  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task= Task.find(params[:id])
  end

  def completed
    @completed = @task.completed?
    if @completed == false
      return @completed = "This task is not completed yet"
    else
      return @completed = "This task is completed"
    end
  end
end
