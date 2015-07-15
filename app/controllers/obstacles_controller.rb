class ObstaclesController < ApplicationController
  load_and_authorize_resource

  def index
    @obstacles = Obstacle.all
  end

  def show
    @obstacle = Obstacle.find(params[:id])

  end

  def new
    @obstacle = Obstacle.new
  end

  def create
    @obstacle = Obstacle.new(obstacle_params)
    if @obstacle.save
      flash[:notice] = "Added"
      redirect_to obstacle_path(@obstacle)
    else
      render :new
    end
  end

  def update
    @obstacle = Obstacle.find(params[:id])
    if @obstacle.update(obstacle_params)
      flash[:notice] = "Modified"
      redirect_to obstacle_path(@obstacle)
    else
      render :edit
    end
  end

  def edit
    @obstacle = Obstacle.find(params[:id])
  end

  def destroy
    @obstacle = Obstacle.find(params[:id])
    @obstacle.destroy
    redirect_to obstacles_path
  end

  private
  def obstacle_params
    params.require(:obstacle).permit(:name, :description, :misery_pts)
  end
end
