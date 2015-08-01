class PostsController < ApplicationController

  def show
  end

  def create
    # handle new thread submission
    @course = Course.find(params[:course_id])
    @post = @course.posts.build(post_params)
    @post.user = User.find_by(id: session[:user].id)

    if @post.save
      redirect_to course_path(@course)
    else
      redirect_to root_path
    end

  end

  private

  def post_params
    params.require(:post).permit!
  end

end