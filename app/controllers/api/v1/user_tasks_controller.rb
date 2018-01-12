class API::V1::UserTasksController < ActionController::API
  def create
    @task = Task.find_or_create_by(user_task_params)
    @user = User.find(params[:current_user_id])
    @user.tasks << @task

    render json: {current_user: @user}

  end

  private

    def user_task_params
      params.require(:task).permit(:user_id, :task_id)
    end

end
