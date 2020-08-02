class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def show
    @board = Board.find_by(id: params[:id])
    @comment = Comment.new
  end

  def new
    @board = current_user.boards.build
  end

  def create
    @board = current_user.boards.build(board_params)
    redirect_to @board
  end

  private

  def board_params
    params.require(:board).permit(:title)
  end
end