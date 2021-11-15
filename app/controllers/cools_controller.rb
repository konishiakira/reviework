class CoolsController < ApplicationController
  def create
        # binding.pry
    @like = Cool.new(page_id: params[:page_id],user_id: current_user.id)

    @like.save
    @cool = Page.find_by(id: @like.page_id)
    @like_count = Cool.where(page_id: params[:page_id]).count


    # もし、かっこいいテーブル以外の感情テーブルに同じユーザーIDのカラムが存在するとき
    # binding.pry
    if Cr.find_by(page_id: params[:page_id],user_id: current_user.id) != nil
      @cr_nil = Cr.find_by(page_id: params[:page_id],user_id: current_user.id)
      @cr_nil.delete
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

    

    # もし、かっこいいテーブル以外の感情テーブルに同じユーザーIDのカラムが存在するとき
    # if @cr_nil != nil || @cute_nil != nil || @scared_nil != nil || @healing_nil != nil || @fun_nil != nil || @interesting_nil != nil || @thoughtprovoking_nil != nil

      # ※保存時にかっこいいテーブル以外の感情テーブルにある同じユーザーIDのカラムを削除する指示を入力する                  
    # end



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