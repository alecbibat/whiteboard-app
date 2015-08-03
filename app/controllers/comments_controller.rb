class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    @comment.user = User.find_by(id: session[:user].id)

    if @comment.save
      redirect_to course_post_path(@post.course_id, params[:post_id])
    else
      redirect_to root_path
    end
  end

  def comment_params
    params.require(:comment).permit!
  end

end