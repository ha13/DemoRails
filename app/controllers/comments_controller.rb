class CommentsController < ApplicationController
  def create
    @post = current_user.posts.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    @comments = @post.comments.order(created_at: :desc).paginate(page: params[:page], per_page: 10)
    UserMailer.delay.send_incoming_comment(current_user,@comment)
    respond_to do |format|
      format.html {redirect_to post_path(@post)}
      format.js
    end
  end
  def destroy
    @post = current_user.posts.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy
    redirect_to post_path(@post)
  end
  private
  def comment_params
    params.require(:comment).permit(:commenter,:body)
  end
end
