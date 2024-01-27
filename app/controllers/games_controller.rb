class GamesController < ApplicationController
  before_action :set_game, only: [:edit, :show, :update, :destroy]

  def index
    @games = Game.all
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to games_path(@game)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @games = Game.all
    @status = Status.new
    @statuses = @game.statuses.includes(:user)
  end

  def edit
  end

  def update
    if @game.update(game_params)
      redirect_to game_path(@game)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @game.destroy
    redirect_to games_path(@game)
  end

  private
  def game_params
    params.require(:game).permit(:story, :coin, :item, :page_1, :page_2).merge(user_id: current_user.id)
  end

  def set_game
    @game = Game.find(params[:id])
  end

end