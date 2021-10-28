class CutesController < ApplicationController
  def create
        # binding.pry
    @like = Cute.new(page_id: params[:page_id],user_id: current_user.id)

    @like.save
    @cute = Page.find_by(id: @like.page_id)
    @like_count = Cute.where(page_id: params[:page_id]).count

    # 詳細ページに戻る
    redirect_to page_path(@cute)   # 追記する

  end

  def delete
        # binding.pry
    @like = Cute.find_by(page_id: params[:page_id],user_id: current_user.id)
    # binding.pry
    @cute = Page.find_by(id: @like.page_id)
    @like.destroy
    @like_count = Cute.where(page_id: params[:page_id]).count

    # 詳細ページに戻る
    redirect_to page_path(@cute)   # 追記する
  end
end
