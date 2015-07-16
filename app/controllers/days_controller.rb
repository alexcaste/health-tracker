class DaysController < ApplicationController
  def index
    @days = Day.all
  end

  def show
    @day = Day.find(params[:id])


  end

  def new
    @days = Day.all
    @day = Day.new
    @feat_selects = Feat.feat_selects
    @ob_selects = Obstacle.ob_selects

  end

  def create
    @days = Day.all
    @day = Day.new(day_params)
    @day.feat_id = params[:feat_id]
    @day.obstacle_id = params[:obstacle_id]
    if @day.save
      flash[:notice] = "Added"
      redirect_to day_path(@day)
    else
      render :new
    end
  end

  def update
    @day = Day.find(params[:id])
    if @day.update(day_params)
      flash[:notice] = "Modified"
      redirect_to day_path(@day)
    else
      render :edit
    end
  end

  def edit
    @day = Day.find(params[:id])
  end

  def destroy
    @day = Day.find(params[:id])
    @day.destroy
    redirect_to days_path
  end

  private

  def day_params
    params.require(:day).permit(:date, :user_id)
  end
end
