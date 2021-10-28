class ThoughtprovokingsController < ApplicationController
  def create
    # binding.pry
    @like = Thoughtprovoking.new(page_id: params[:page_id],user_id: current_user.id)

    @like.save
    @thoughtprovoking = Page.find_by(id: @like.page_id)
    @like_count = Thoughtprovoking.where(page_id: params[:page_id]).count

    # 詳細ページに戻る
    redirect_to page_path(@thoughtprovoking)   # 追記する

  end

  def delete
        # binding.pry
    @like = Thoughtprovoking.find_by(page_id: params[:page_id],user_id: current_user.id)
    # binding.pry
    @thoughtprovoking = Page.find_by(id: @like.page_id)
    @like.destroy
    @like_count = Thoughtprovoking.where(page_id: params[:page_id]).count

    # 詳細ページに戻る
    redirect_to page_path(@thoughtprovoking)   # 追記する
  end
end
