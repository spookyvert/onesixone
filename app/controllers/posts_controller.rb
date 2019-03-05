class PostsController < ApplicationController

  before_action :get_post, only: [:show]

  def index
    @posts = Post.all
  end

  def show;end

  def create
    @u = post_params["user_id"].to_i
    @user = User.find(@u)
    @user.posts.new(post_params)

    if @user.valid?
      @user.save

            redirect_to post_path(@user.posts.last.id)
    else
      render :new_post
    end

  end



  private
  def get_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title,:desc,:user_id,:location)
  end


end
