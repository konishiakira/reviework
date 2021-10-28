class CoolsController < ApplicationController
  def create
        # binding.pry
    @like = Cool.new(page_id: params[:page_id],user_id: current_user.id)

    @like.save
    @cool = Page.find_by(id: @like.page_id)
    @like_count = Cool.where(page_id: params[:page_id]).count

    # 詳細ページに戻る
    redirect_to page_path(@cool)   # 追記する
    
  end

  def delete
        # binding.pry
    @like = Cool.find_by(page_id: params[:page_id],user_id: current_user.id)
    # binding.pry
    @cool = Page.find_by(id: @like.page_id)
    @like.destroy
    @like_count = Cool.where(page_id: params[:page_id]).count

    # 詳細ページに戻る
    redirect_to page_path(@cool)   # 追記する
  end
end

  # また、カウントの数字を表示するための一文をボタンを設置するビューのファイルにも書いておきます。
  # @like_count = Like.where(food_id: params[:food_id]).count