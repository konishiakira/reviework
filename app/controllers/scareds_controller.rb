class ScaredsController < ApplicationController
  def create
    # binding.pry
    @like = Scared.new(page_id: params[:page_id],user_id: current_user.id)

    @like.save
    @scared = Page.find_by(id: @like.page_id)
    @like_count = Scared.where(page_id: params[:page_id]).count

    # 詳細ページに戻る
    redirect_to page_path(@scared)   # 追記する

  end

  def delete
        # binding.pry
    @like = Scared.find_by(page_id: params[:page_id],user_id: current_user.id)
    # binding.pry
    @scared = Page.find_by(id: @like.page_id)
    @like.destroy
    @like_count = Scared.where(page_id: params[:page_id]).count

    # 詳細ページに戻る
    redirect_to page_path(@scared)   # 追記する
  end
end
