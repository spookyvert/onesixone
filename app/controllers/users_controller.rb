class UsersController < ApplicationController
  before_action :get_user, only: [:show, :create_post]

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

def create_post
 @user_post = @user.posts.new(post_params)
 if @user_post.valid?
   @user_post.save
   redirect_to post_path(@user_post)
 else
   render :new_post
 end

end



private

def get_user
  @user = User.find(params[:id])
end

def user_params
  params.require(:user).permit(:name)
end
def post_params
  params.require(:post).permit(:title,:desc,:user_id,:location)
end


end
