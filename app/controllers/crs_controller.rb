class CrsController < ApplicationController
  def create
        # binding.pry
    @like = Cr.new(page_id: params[:page_id],user_id: current_user.id)
    
    @like.save
    @food = Page.find_by(id: @like.page_id)
    @like_count = Cr.where(page_id: params[:page_id]).count


    # もし、泣くテーブル以外の感情テーブルに同じユーザーIDのカラムが存在するとき
    # binding.pry
    if Cool.find_by(page_id: params[:page_id],user_id: current_user.id) != nil
      @cool_nil = Cool.find_by(page_id: params[:page_id],user_id: current_user.id)
      @cool_nil.delete
    end

    if Cute.find_by(page_id: params[:page_id],user_id: current_user.id) != nil
      @cute_nil = Cute.find_by(page_id: params[:page_id],user_id: current_user.id)
      @cute_nil.delete
    end

    if Scared.find_by(page_id: params[:page_id],user_id: current_user.id) != nil
      @scared_nil = Scared.find_by(page_id: params[:page_id],user_id: current_user.id)
      @scared_nil.delete
    end

    if Healing.find_by(page_id: params[:page_id],user_id: current_user.id) != nil
      @healing_nil = Healing.find_by(page_id: params[:page_id],user_id: current_user.id)
      @healing_nil.delete
    end

    if Fun.find_by(page_id: params[:page_id],user_id: current_user.id) != nil
      @fun_nil = Fun.find_by(page_id: params[:page_id],user_id: current_user.id)
      @fun_nil.delete
    end

    if Interesting.find_by(page_id: params[:page_id],user_id: current_user.id) != nil
      @interesting_nil = Interesting.find_by(page_id: params[:page_id],user_id: current_user.id)
      @interesting_nil.delete
    end

    if Thoughtprovoking.find_by(page_id: params[:page_id],user_id: current_user.id) != nil
      @thoughtprovoking_nil = Thoughtprovoking.find_by(page_id: params[:page_id],user_id: current_user.id)
      @thoughtprovoking_nil.delete
    end


    # 詳細ページに戻る
    redirect_to page_path(@food)   # 追記する

  end
  
  def delete
        # binding.pry
    @like = Cr.find_by(page_id: params[:page_id],user_id: current_user.id)
    # binding.pry
    @food = Page.find_by(id: @like.page_id)
    @like.destroy
    @like_count = Cr.where(page_id: params[:page_id]).count

    # 詳細ページに戻る
    redirect_to page_path(@food)   # 追記する
  end
end

# また、カウントの数字を表示するための一文をボタンを設置するビューのファイルにも書いておきます。
# @like_count = Like.where(food_id: params[:food_id]).count

