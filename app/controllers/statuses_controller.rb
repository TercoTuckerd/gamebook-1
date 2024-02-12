class StatusesController < ApplicationController
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
      redirect_to  games_path(@game)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end
  
  private
  def status_params
    params.require(:status).permit(:battle_a, :battle_b, :battle_c, :battle_d, :battle_e, :battle_f, :battle_g, :battle_h, :battle_i, :battle_j, :hp, :tek, :coin, :item).merge(user_id: current_user.id, game_id: 1)
  end
end