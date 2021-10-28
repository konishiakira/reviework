class InterestingsController < ApplicationController
  def create
    # binding.pry
    @like = Interesting.new(page_id: params[:page_id],user_id: current_user.id)

    @like.save
    @interesting = Page.find_by(id: @like.page_id)
    @like_count = Interesting.where(page_id: params[:page_id]).count

    # 詳細ページに戻る
    redirect_to page_path(@interesting)   # 追記する

  end

  def delete
        # binding.pry
    @like = Interesting.find_by(page_id: params[:page_id],user_id: current_user.id)
    # binding.pry
    @interesting = Page.find_by(id: @like.page_id)
    @like.destroy
    @like_count = Interesting.where(page_id: params[:page_id]).count

    # 詳細ページに戻る
    redirect_to page_path(@interesting)   # 追記する
  end
end