class CommentsController < ApplicationController
  before_action :set_post
  before_action :set_comment, only: [:edit, :update, :destroy]

  def create
    @comment = @post.comments.new(comment_params)
    if @comment.save
      redirect_to @post, notice: "Comment created!"
    else
      # Show errors on the post's show page
      @comments = @post.comments
      render "posts/show"
    end
  end

  def edit
  end

  def update
    if @comment.update(comment_params)
      redirect_to @post, notice: "Comment updated!"
    else
      render :edit
    end
  end

  def destroy
    @comment.destroy
    redirect_to @post, alert: "Comment was deleted."
  end

  private

  def set_post
    @post = Post.find(params[:post_id])
  end

  def set_comment
    @comment = @post.comments.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
