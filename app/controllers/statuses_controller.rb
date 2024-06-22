class StatusesController < ApplicationController
  before_action :set_status, only: [:edit, :show, :update, :destroy]
  before_action :authenticate_user!, except: [:index]
  
  def index
    @statuses = Status.all
  end

  def new
    @status = Status.new
  end

  def create
    @status = Status.new(status_params)
    if @status.save
      redirect_to "/games/#{status.game.id}"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def edit
  end

  def update
    if @status.update(status_params)
      redirect_to games_path(@game)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @status.destroy
    redirect_to games_path(@game)
  end
  
  private
  def status_params
    params.require(:status).permit(:text).merge(user_id: current_user.id, game_id: params[:game_id])
  end

  def set_status
    @status = status.find(params[:id])
  end

end