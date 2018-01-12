class Api::V1::TasksController < ActionController::API

  def index
    @tasks = Task.all
    render json: @tasks
  end

  def show
    @task= Task.find(params[:id])
    render json: {current_task: @task}

  end

  def create
    @task = Task.create(name: params[:name], description: params[:description], link1: params[:link1], link2: params[:link2], blog: params[:blog] )
    render json: @task.to_json
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)

  end

  private

  def task_params
    params.require(:task).permit(:name, :description, :link1, :link2, :blog)
  end
end
