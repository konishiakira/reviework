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
      # binding.pry
      @like_nil = Cr.find_by(page_id: params[:id],user_id: current_user.id)

      # レビュー投稿したテーブルのうち、今回いいねボタンを押下した際に作品対象ページの
      #受け取ったpage_id(作品のレコード番号)のレコードを格納
      @food = Page.find_by(id: @like.page_id)

    end
    @like_count = Cr.where(page_id: params[:id],user_id: current_user.id).count

    # crテーブルにログインユーザーのアカウントと紐づくuser_idカラムが存在するか検索
    # @mach_cr = Cr.find_by(user_id: current_user,repl: nil)
    
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
    binding.pry
    @des_id.destroy

    # @des_id_link = Review.find(page_id: params[:id],user_id: current_user,repl: nil)
    Review.where(repl: @des_id.id).destroy_all

    redirect_to root_path
  end

  private

  def page_params
    params.require(:page).permit(:title,:category_id,:user_id).merge(user_id: current_user.id)
  end

end
