class ActionsController < ApplicationController
  load_and_authorize_resource

  def index
    @actions = Action.all
  end

  def show
    @action = Action.find(params[:id])

  end

  def new
    @action = Action.new
  end

  def create
    @action = Action.new(action_params)
    if @action.save
      flash[:notice] = "Added"
      redirect_to action_path(@action)
    else
      render :new
    end
  end

  def update
    @action = Action.find(params[:id])
    if @action.update(action_params)
      flash[:notice] = "Modified"
      redirect_to action_path(@action)
    else
      render :edit
    end
  end

  def edit
    @action = Action.find(params[:id])
  end

  def destroy
    @action = Action.find(params[:id])
    @action.destroy
    redirect_to actions_path
  end

  private
  def action_params
    params.require(:action).permit(:name, :description, :bliss_pts)
  end
end
