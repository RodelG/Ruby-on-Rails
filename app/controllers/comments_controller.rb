class CommentsController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @comment = @user.comments.create(comment_params)
    redirect_to @user
  end

  def destroy
    @user = User.find(params[:user_id])
    @comment = @user.comments.find(params[:id])
    @comment.destroy
    redirect_to @user
  end


  private def comment_params
    params.require(:comment).permit(:title, :description)
  end
end
