class UsersController < ApplicationController
  before_action :get_user, only: [:show, :create_post, :new_post]

  def index; end

  def show;end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  def new_post
    @user_post = @user.posts.new
  end

  private

  def get_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name)
  end
  def post_params
    params.require(:post).permit(:title, :desc, :user_id, :location)
  end


end
