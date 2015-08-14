class PostsController < ApplicationController

  def show
    @mycoursespage = false
    @post = Post.find(params[:id])
    @comment = Comment.new()
  end

  def create
    # handle new thread submission
    @course = Course.find(params[:course_id])
    @post = @course.posts.build(post_params)
    @post.user = User.find_by(id: session[:user].id)

    if @post.save
      redirect_to course_path(@course)
    else
      render 'courses/show'
    end

  end

  private

  def post_params
    params.require(:post).permit!
  end

end