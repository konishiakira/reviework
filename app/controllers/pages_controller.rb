class PagesController < ApplicationController

  def index
    query = "SELECT * FROM pages"
    @pages = Page.find_by_sql(query)

  end

  def new
    @page = Page.new
    @review = Review.new
  end
  
  def create
    # binding.pry
    @page = Page.new(page_params)
    if @page.save
      redirect_to root_path
    else
      render :new
    end

  end

  # 作品レビューページへ遷移
  def show
    @page = Page.find(params[:id])

    @review = Review.new 
    @reviews = @page.reviews  # 追記
  
    @repl = Review.new(page_id: params[:page_id], user_id: params[:user_id])
    # @like_count = Like.where(food_id: params[:food_id]).count



    # 「泣」表示確認
    if user_signed_in?
      @like = Cr.new(page_id: params[:id],user_id: current_user.id)
      # binding.pry
      @cr_nil = Cr.find_by(page_id: params[:id],user_id: current_user.id)

      # レビュー投稿したテーブルのうち、今回いいねボタンを押下した際に作品対象ページの
      #受け取ったpage_id(作品のレコード番号)のレコードを格納
      @food = Page.find_by(id: @like.page_id)

    end
    @like_count = Cr.where(page_id: params[:id],user_id: current_user.id).count

    # crテーブルにログインユーザーのアカウントと紐づくuser_idカラムが存在するか検索
    # @mach_cr = Cr.find_by(user_id: current_user,repl: nil)
    # //「泣」表示確認


    # 「かっこいい」表示確認
    if user_signed_in?
      @like = Cool.new(page_id: params[:id],user_id: current_user.id)
      # binding.pry
      @cool_nil = Cool.find_by(page_id: params[:id],user_id: current_user.id)

      # レビュー投稿したテーブルのうち、今回いいねボタンを押下した際に作品対象ページの
      #受け取ったpage_id(作品のレコード番号)のレコードを格納
      @cool = Page.find_by(id: @like.page_id)

    end
    @like_count = Cool.where(page_id: params[:id],user_id: current_user.id).count

    # crテーブルにログインユーザーのアカウントと紐づくuser_idカラムが存在するか検索
    # @mach_cr = Cr.find_by(user_id: current_user,repl: nil)
    # //「かっこいい」表示確認


    # 「可愛い」表示確認
    if user_signed_in?
      @like = Cute.new(page_id: params[:id],user_id: current_user.id)
      # binding.pry
      @cute_nil = Cute.find_by(page_id: params[:id],user_id: current_user.id)

      # レビュー投稿したテーブルのうち、今回いいねボタンを押下した際に作品対象ページの
      #受け取ったpage_id(作品のレコード番号)のレコードを格納
      @cute = Page.find_by(id: @like.page_id)

    end
    @like_count = Cute.where(page_id: params[:id],user_id: current_user.id).count

    # crテーブルにログインユーザーのアカウントと紐づくuser_idカラムが存在するか検索
    # @mach_cr = Cr.find_by(user_id: current_user,repl: nil)
    # //「可愛い」表示確認


    # 「怖い」表示確認
    if user_signed_in?
      @like = Scared.new(page_id: params[:id],user_id: current_user.id)
      # binding.pry
      @scared_nil = Scared.find_by(page_id: params[:id],user_id: current_user.id)

      # レビュー投稿したテーブルのうち、今回いいねボタンを押下した際に作品対象ページの
      #受け取ったpage_id(作品のレコード番号)のレコードを格納
      @scared = Page.find_by(id: @like.page_id)

    end
    @like_count = Scared.where(page_id: params[:id],user_id: current_user.id).count

    # crテーブルにログインユーザーのアカウントと紐づくuser_idカラムが存在するか検索
    # @mach_cr = Cr.find_by(user_id: current_user,repl: nil)
    # //「怖い」表示確認


    # 「考えさせれる」表示確認
    if user_signed_in?
      @like = Healing.new(page_id: params[:id],user_id: current_user.id)
      # binding.pry
      @healing_nil = Healing.find_by(page_id: params[:id],user_id: current_user.id)

      # レビュー投稿したテーブルのうち、今回いいねボタンを押下した際に作品対象ページの
      #受け取ったpage_id(作品のレコード番号)のレコードを格納
      @healing = Page.find_by(id: @like.page_id)

    end
    @like_count = Healing.where(page_id: params[:id],user_id: current_user.id).count

    # crテーブルにログインユーザーのアカウントと紐づくuser_idカラムが存在するか検索
    # @mach_cr = Cr.find_by(user_id: current_user,repl: nil)
    # //「考えさせられる」表示確認



    # 「考えさせれる」表示確認
    if user_signed_in?
      @like = Fun.new(page_id: params[:id],user_id: current_user.id)
      # binding.pry
      @fun_nil = Fun.find_by(page_id: params[:id],user_id: current_user.id)

      # レビュー投稿したテーブルのうち、今回いいねボタンを押下した際に作品対象ページの
      #受け取ったpage_id(作品のレコード番号)のレコードを格納
      @fun = Page.find_by(id: @like.page_id)

    end
    @like_count = Fun.where(page_id: params[:id],user_id: current_user.id).count

    # crテーブルにログインユーザーのアカウントと紐づくuser_idカラムが存在するか検索
    # @mach_cr = Cr.find_by(user_id: current_user,repl: nil)
    # //「考えさせられる」表示確認



    @mach_id = Review.find_by(user_id: current_user,repl: nil)
    
    # binding.pry
    #いいね分岐のための変数用意が必要

    @mach_repl = Review.find_by(repl: params[:id])

    @des_id = Review.find_by(user_id: current_user,repl: nil)

  end

  def update
    @page = Page.find(params[:format])
    @url = params[:id]
    @review = Review.new
    @reviews = @page.reviews  # 追記

    @review_repl = Review.new

  end

  def destroy
    # binding.pry
    @des_id = Review.find_by(page_id: params[:id],user_id: current_user,repl: nil)
    # binding.pry
    @des_id.destroy

    # @des_id_link = Review.find(page_id: params[:id],user_id: current_user,repl: nil)
    Review.where(repl: @des_id.id).destroy_all

    # @page = Page.find(params[:id])
    redirect_to page_path(params[:id])   # 追記する
  end

  private

  def page_params
    params.require(:page).permit(:title,:category_id,:user_id).merge(user_id: current_user.id)
  end

end
