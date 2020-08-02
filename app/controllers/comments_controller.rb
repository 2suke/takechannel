class CommentsController < ApplicationController
  def create
    current_board = Board.find_by(id: params.require(:comment)[:board_id])
    @comment = current_board.comments.build(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_to current_board
  end

  private

  def comment_params
    params.require(:comment).delete :board_id
    params.require(:comment).permit(:message, :user, :board_id)
  end
end
