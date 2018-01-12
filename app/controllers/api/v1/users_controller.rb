class Api::V1::UsersController < ActionController::API

  def index
    @users = User.all
    render json: @users
  end

  def show
    @user= User.find(params[:id])
    render json: {current_user: @user}

  end

  def create
    @user = User.create(username: params[:username], password: params[:password] )
    payload = {user_id: user.id}
    token = issue_token(payload)
    render json: { jwt: token, yay: true, user: @user }.to_json, status: 200
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)

  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
