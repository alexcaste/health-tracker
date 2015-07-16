class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @days = Day.find_days(current_user.id)
    @feats = Day.find_feats(current_user.id)
    @obs = Day.find_obstacles(current_user.id)
  end

end
