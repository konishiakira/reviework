class FunsController < ApplicationController
  def create
        # binding.pry
    @like = Fun.new(page_id: params[:page_id],user_id: current_user.id)

    @like.save
    @fun = Page.find_by(id: @like.page_id)
    @like_count = Fun.where(page_id: params[:page_id]).count


    # もし、可愛いテーブル以外の感情テーブルに同じユーザーIDのカラムが存在するとき
    # binding.pry
    if Cr.find_by(page_id: params[:page_id],user_id: current_user.id) != nil
      @cr_nil = Cr.find_by(page_id: params[:page_id],user_id: current_user.id)
      @cr_nil.delete
    end

    if Cool.find_by(page_id: params[:page_id],user_id: current_user.id) != nil
      @cool_nil = Cool.find_by(page_id: params[:page_id],user_id: current_user.id)
      @cool_nil.delete
    end

    if Scared.find_by(page_id: params[:page_id],user_id: current_user.id) != nil
      @scared_nil = Scared.find_by(page_id: params[:page_id],user_id: current_user.id)
      @scared_nil.delete
    end

    if Healing.find_by(page_id: params[:page_id],user_id: current_user.id) != nil
      @healing_nil = Healing.find_by(page_id: params[:page_id],user_id: current_user.id)
      @healing_nil.delete
    end

    if Cute.find_by(page_id: params[:page_id],user_id: current_user.id) != nil
      @cute_nil = Cute.find_by(page_id: params[:page_id],user_id: current_user.id)
      @cute_nil.delete
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
