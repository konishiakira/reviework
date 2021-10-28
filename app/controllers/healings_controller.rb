class HealingsController < ApplicationController
  def create
    # binding.pry
    @like = Healing.new(page_id: params[:page_id],user_id: current_user.id)

    @like.save
    @healing = Page.find_by(id: @like.page_id)
    @like_count = Healing.where(page_id: params[:page_id]).count

    # 詳細ページに戻る
    redirect_to page_path(@healing)   # 追記する

  end

  def delete
        # binding.pry
    @like = Healing.find_by(page_id: params[:page_id],user_id: current_user.id)
    # binding.pry
    @healing = Page.find_by(id: @like.page_id)
    @like.destroy
    @like_count = Healing.where(page_id: params[:page_id]).count

    # 詳細ページに戻る
    redirect_to page_path(@healing)   # 追記する
  end
end
