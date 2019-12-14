class TasksController < ApplicationController
    def index
      @tasks = Task.all
    end
  
    def create
      @task = Task.new(task_params)
      if @task.save
        redirect_to root_path
      else
        redirect_to root_path
      end
    end
  
  
    def update
      @task = Task.find(params[:id])
      if @task.status
        @task.status = false
      else
        @task.status = true
      end
       
      @task.save
      redirect_to root_path
    end
  
  
    def destroy
      @task = Task.find(params[:id])
      @task.destroy
      redirect_to root_path
    end
  
  
    private
  
    def task_params
      params.require(:task).permit(:name)
    end
  
  
  end