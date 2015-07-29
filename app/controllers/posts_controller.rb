class PostsController < ApplicationController

  def create
    # handle new thread submission
    @course = Course.find(params[:course_id])
    @post = @course.posts.build(post_params)
    @post.user = User.first()

    if @post.save
      redirect_to course_path(@course)
    else
      redirect_to root_path
    end
  end

  def post_params
    params.require(:post).permit!
  end

end