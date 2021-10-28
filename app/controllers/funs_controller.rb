class FunsController < ApplicationController
  def create
        # binding.pry
    @like = Fun.new(page_id: params[:page_id],user_id: current_user.id)

    @like.save
    @fun = Page.find_by(id: @like.page_id)
    @like_count = Fun.where(page_id: params[:page_id]).count

    # 詳細ページに戻る
    redirect_to page_path(@fun)   # 追記する

  end

  def delete
        # binding.pry
    @like = Fun.find_by(page_id: params[:page_id],user_id: current_user.id)
    # binding.pry
    @fun = Page.find_by(id: @like.page_id)
    @like.destroy
    @like_count = Fun.where(page_id: params[:page_id]).count

    # 詳細ページに戻る
    redirect_to page_path(@fun)   # 追記する
  end
end
