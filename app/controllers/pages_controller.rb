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

    # いいね表示確認
    if user_signed_in?
      @like = Cr.new(page_id: params[:id],user_id: current_user.id)
      @food = Page.find_by(id: @like.page_id)
    end
    @like_count = Cr.where(page_id: params[:id]).count

    # crテーブルにログインユーザーのアカウントと紐づくuser_idカラムが存在するか検索
    @mach_id = Review.find_by(user_id: current_user,repl: nil)
    
    # binding.pry
    #いいね分岐のための変数用意が必要

  end

  def update
    @page = Page.find(params[:format])
    @url = params[:id]
    @review = Review.new
    @reviews = @page.reviews  # 追記

    @review_repl = Review.new

  end

  # いいねの更新のためeditアクションを使用
  def edit
    @page = Page.find(params[:id])

    @review = Review.new 
    @reviews = @page.reviews  # 追記
  
    @repl = Review.new(page_id: params[:page_id], user_id: params[:user_id])
    # @like_count = Like.where(food_id: params[:food_id]).count

    # いいね表示確認
    @like = Cr.new(page_id: params[:id],user_id: current_user.id)
    @food = Page.find_by(id: @like.page_id)
    @like_count = Cr.where(page_id: params[:id]).count

    # crテーブルにログインユーザーのアカウントと紐づくuser_idカラムが存在するか検索
    @mach_id = Cr.find_by(user_id: current_user)
    # binding.pry
    #いいね分岐のための変数用意が必要
  end



  private

  def page_params
    params.require(:page).permit(:title,:category_id,:user_id).merge(user_id: current_user.id)
  end

end
