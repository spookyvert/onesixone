class PostsController < ApplicationController

  before_action :get_post, only: [:show,:edit,:update,:destroy]

  def index
    @posts = Post.all
  end

  def show

  end

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
  #
  def destroy

  end

  def edit
    if  @logged_in && @user.id == @logged_in_user
      render :edit
    elsif @logged_in
      redirect_to user_path(@logged_in_user)
    else
      redirect_to login_path
    end
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to root_url
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
