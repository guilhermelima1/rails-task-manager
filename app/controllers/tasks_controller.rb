class TasksController < ApplicationController



# list tasks
def index
    @tasks = Task.all
end

# view details of a task
def show
    @task = Task.find(params[:id])
end

# add a new task

def new
    @task = Task.new #needed to instantiate the form
end


def create
    @task = Task.new(task_params)
    @task.save
end

# edit a task (mark completed change title and details)
def edit
    @task = Task.find(params[:id])
end

#remove a task
def delete
    @task = Taks.find(params[:id])
    @task.destroy
end

def update
    @task = Task.find(params[:id])
    @task.update(task_params)

    redirect_to task_path(@task)
  end

private 

def task_params
    params.require(:task).permit(:id, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end

end

