class UsersController < ApplicationController
  def show
    @bookmarks = Bookmark.where(user_id: current_user.id).all
    @user = current_user
    authorize @user
  end

  def edit_profile
    @user = current_user
    authorize @user
  end

  def update_profile
    @user = User.find(current_user.id)

    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render "edit"
    end
    authorize @user
  end

  private

  def user_params
    params.required(:user).permit(:first_name, :last_name, :photo, :email)
  end
end
