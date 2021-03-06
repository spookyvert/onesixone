class PostUsersController < ApplicationController

  def create

    @user = current_user.id
    @post = params[:post_user][:post_id]
    @post = @post.to_i
    likes = {user_id: @user, post_id: @post}
    @like = PostUser.new(likes)
    @like.save!
    if @like.save
      @posts = Post.all
      flash[:success] = "Liked Post"
      redirect_back(fallback_location: :show)
    else
     flash[:error] = "Error while liking post"
    end
  end

  def destroy
    @like.destroy
  end


  private

  def postuser_params
    params.require(:post_users).permit(:user_id, :post_id)
  end

end
