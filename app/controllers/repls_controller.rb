class ReplsController < ApplicationController
  def create
    repl = Repl.create(repl_params)
    redirect_to "/pages/#{repl.review.id}"  
    # コメントと結びつくツイートの詳細画面に遷移する
    
  end

  private
  def repl_params
    params.require(:repl).permit(:comment).merge(user_id: current_user.id)
  end
end
