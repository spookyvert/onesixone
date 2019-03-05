class UsersController < ApplicationController
  before_action :get_user, only: [:show, :create_post, :new_post,:edit,:update,:destroy]
  skip_before_action :setup_user, only:[:create]
  def index; end

  def show
      @logged_in = !!session[:user_id]

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      session[:user_id] = @user.id

      @logged_in_user =  User.find(session[:user_id])
      redirect_to user_path(@user)
          else
      render :new
    end
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
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def new_post
    @user_post = @user.posts.new
  end

  def destroy
    if @logged_in && @user.id == @logged_in_user
      session[:user_id] = nil
      @user.destroy
      redirect_to "login_url"
    else
      redirect_to login_path
    end
  end

  private

  def get_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name,:email, :password, :password_confirmation)
  end
  def post_params
    params.require(:post).permit(:title, :desc, :user_id, :location)
  end

end
