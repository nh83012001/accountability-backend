class Api::V1::CommentsController < ActionController::API

  def index
    @comments = Comment.all
    render json: @comments
  end

  def show
    @comment= Comment.find(params[:id])
    render json: {current_comment: @comment}

  end

  def create
    @comment = Comment.create(task_id: params[:task_id], description: params[:description], user: params[:user])
    render json: @comment.to_json
  end

  def update
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)

  end

  private

  def comment_params
    params.require(:comment).permit(:task_id, :description, :user)
  end
end
