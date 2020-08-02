class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def show
    @board = Board.find_by(params[:id])
    @comment = Comment.new
  end

  def new
    @board = current_user.boards.build
  end

  def create
    @board = current_user.boards.build(board_params)
    if @board.save
      redirect_to @board
    else
      redirect_to @board
    end
  end

  private

  def board_params
    params.require(:board).permit(:title, :tag_list)
  end
end