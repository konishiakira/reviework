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

    # 仮置き
    # @reviews_count = Page.where(id: params[:id],repl: :nil)

    @review = Review.new 
    @reviews = @page.reviews  # 追記
  
    # 試し
    # @reviews = @page.reviews.where.not(repl: nil)
    # User.where.not(name: nil)

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

      @like_count = Cr.where(page_id: params[:id],user_id: current_user.id).count
    end


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

      @like_count = Cool.where(page_id: params[:id],user_id: current_user.id).count
    end


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
      @like_count = Cute.where(page_id: params[:id],user_id: current_user.id).count
    end


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
      @like_count = Scared.where(page_id: params[:id],user_id: current_user.id).count
    end


    # //「怖い」表示確認


    # 「癒される」表示確認
    if user_signed_in?
      @like = Healing.new(page_id: params[:id],user_id: current_user.id)
      # binding.pry
      @healing_nil = Healing.find_by(page_id: params[:id],user_id: current_user.id)

      # レビュー投稿したテーブルのうち、今回いいねボタンを押下した際に作品対象ページの
      #受け取ったpage_id(作品のレコード番号)のレコードを格納
      @healing = Page.find_by(id: @like.page_id)
      @like_count = Healing.where(page_id: params[:id],user_id: current_user.id).count
    end


    # //「癒される」表示確認

    # 「楽しい」表示確認
    if user_signed_in?
      @like = Fun.new(page_id: params[:id],user_id: current_user.id)
      # binding.pry
      @fun_nil = Fun.find_by(page_id: params[:id],user_id: current_user.id)

      # レビュー投稿したテーブルのうち、今回いいねボタンを押下した際に作品対象ページの
      #受け取ったpage_id(作品のレコード番号)のレコードを格納
      @fun = Page.find_by(id: @like.page_id)
      @like_count = Fun.where(page_id: params[:id],user_id: current_user.id).count

    end

    # crテーブルにログインユーザーのアカウントと紐づくuser_idカラムが存在するか検索
    # @mach_cr = Cr.find_by(user_id: current_user,repl: nil)
    # //「楽しい」表示確認

    # 「面白い」表示確認
    if user_signed_in?
      @like = Interesting.new(page_id: params[:id],user_id: current_user.id)
      # binding.pry
      @interesting_nil = Interesting.find_by(page_id: params[:id],user_id: current_user.id)

      # レビュー投稿したテーブルのうち、今回いいねボタンを押下した際に作品対象ページの
      #受け取ったpage_id(作品のレコード番号)のレコードを格納
      @interesting = Page.find_by(id: @like.page_id)
      @like_count = Interesting.where(page_id: params[:id],user_id: current_user.id).count

    end

    # crテーブルにログインユーザーのアカウントと紐づくuser_idカラムが存在するか検索
    # @mach_cr = Cr.find_by(user_id: current_user,repl: nil)
    # //「面白い」表示確認

    # 「考えさせられる」表示確認
    if user_signed_in?
      @like = Thoughtprovoking.new(page_id: params[:id],user_id: current_user.id)
      # binding.pry
      @thoughtprovoking_nil = Thoughtprovoking.find_by(page_id: params[:id],user_id: current_user.id)

      # レビュー投稿したテーブルのうち、今回いいねボタンを押下した際に作品対象ページの
      #受け取ったpage_id(作品のレコード番号)のレコードを格納
      @thoughtprovoking = Page.find_by(id: @like.page_id)
      @like_count = Thoughtprovoking.where(page_id: params[:id],user_id: current_user.id).count

    end

    # crテーブルにログインユーザーのアカウントと紐づくuser_idカラムが存在するか検索
    # @mach_cr = Cr.find_by(user_id: current_user,repl: nil)
    # //「考えさせられる」表示確認


    @mach_id = Review.find_by(page_id: params[:id],user_id: current_user,repl: nil)
    
    # binding.pry
    #いいね分岐のための変数用意が必要

    @mach_repl = Review.find_by(repl: params[:id])

    @des_id = Review.find_by(user_id: current_user,repl: nil)

    # 一番多いレコード数の抽出
    array = [Cr.where(page_id: params[:id]).count,Cool.where(page_id: params[:id]).count,Cute.where(page_id: params[:id]).count,Scared.where(page_id: params[:id]).count,Healing.where(page_id: params[:id]).count,Fun.where(page_id: params[:id]).count,Interesting.where(page_id: params[:id]).count,Thoughtprovoking.where(page_id: params[:id]).count]

    # 感情名の取得
    # array_name = [Cr.table_name,Cool.table_name,Cute.table_name,Scared.table_name,Healing.table_name,Fun.table_name,Interesting.table_name,Thoughtprovoking.table_name]
    array_name = ["悲しい","かっこいい","可愛い","怖い","癒される","楽しい","面白い","考えさせられる"]

    @max = array[0]
    @max_name = array_name[0]    

    array.length.times { |i|
        if @max < array[i]
            @max = array[i]
            @max_name = array_name[i]
        end
    }
    #// 一番多いレコード数の抽出

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
