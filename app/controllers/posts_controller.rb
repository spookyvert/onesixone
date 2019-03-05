class PostsController < ApplicationController

  before_action :get_post, only: [:show]

  def index
    @posts = Post.all
  end

  def show;end

  def create
    find_user
    @user_post = @user.posts.new(post_params)
    if @user_post.valid?
      @user_post.save
      redirect_to post_path(@user_post.id)
    else
      render "users/new_post"
    end
  end

  private
  def get_post
    @post = Post.find(params[:id])
  end

  def find_user
    @user = User.find(post_params["user_id"])
  end
  def post_params
    params.require(:post).permit(:title,:desc,:user_id,:location)
  end

end
