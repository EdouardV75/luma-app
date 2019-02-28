class PostsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]

 def new
    @post = Post.new
    authorize @post
  end

  def create
    @post = Post.new(post_params)
    @post.user = current_user
    authorize @post
    if @post.save
      redirect_to experiences_path
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post).permit(:name, :status, :content, category_ids: [])
  end
end
