class Api::V1::LikesController < ActionController::API

  def index
    @likes = Like.all
    render json: @likes
  end

  def show
    @like= Like.find(params[:id])
    render json: {current_like: @like}

  end

  def create
    @like = Like.create(task_id: params[:task_id], count: params[:count])
    render json: @like.to_json
  end

  def update
    @like = Like.find(params[:id])
    @like.update(like_params)

  end

  private

  def like_params
    params.require(:like).permit(:task_id, :count)
  end
end
