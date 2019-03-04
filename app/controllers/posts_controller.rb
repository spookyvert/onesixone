class PostsController < ApplicationController

  before_action :get_post, only: [:show]

def index
 @posts = Post.all
end

def show;end



private

def get_post
  @post = Post.find(params[:id])
end

def post_params
  params.require(:post).permit(:title,:desc,:user_id,:location)
end


end
