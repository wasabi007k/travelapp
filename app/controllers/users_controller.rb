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
  end
end
