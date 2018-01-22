class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = current_user.posts.build
  end

  def edit
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
      @post = current_user.posts.build

    if @post.save
        flash[:success] = "Woot, that worked!"
        redirect_to post_path(@post)

      else
        flash[:error] = "shit!"
        redirect_to new_post_path(@post)
      end
    end

  private

  def post_params
    params.require(:post).permit(:image, :description)
  end
end
