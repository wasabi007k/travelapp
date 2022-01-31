class UsersController < ApplicationController
  def index
    #Userモデルのユーザ情報をすべて@users変数に代入
    @users = User.all
  end

  def show
    #user一人のidを見つけて@userに代入
    @user = User.find(params[:id])
  end

  def edit
    #user一人のidを見つけて@userに代入
    @user = User.find(params[:id])
  end

  def update
    #ユーザー情報を更新しユーザー詳細画面に遷移
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :profile, :profile_image)
  end
end
