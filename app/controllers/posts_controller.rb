class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def index
    @posts = Post.all
  end

  def edit
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(permit_post)

    if @post.save
        flash[:success] = "Woot, that worked!"
        redirect_to post_path(@post)

      else
        flash[:error] = @post.errors.full_messages
        redirect_to new_post_path(@post)
      end
    end

  private

  def permit_post
    params.require(:post).permit(:image, :description)
  end
end
