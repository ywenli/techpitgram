class CommentsController < ApplicationController

  before_action :authenticate_user!
  before_action :set_post_and_comment, only: %i(create destroy)

  def create
    if @comment.save
      respond_to :js
    else
      flash[:alert] = "コメントに失敗しました"
    end
  end

  def destroy
    if @comment.destroy
      respond_to :js
    else
      flash[:alert] = "コメントの削除に失敗しました"
    end
  end

  private

    def comment_params
      params.required(:comment).permit(:user_id, :post_id, :comment)
    end

    def set_post_and_comment
      @comment = Comment.new(comment_params)
      @post = @comment.post
    end

end
