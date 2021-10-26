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
    
  end

  def update
    @page = Page.find(params[:format])
    @url = params[:id]
    @review = Review.new
    @reviews = @page.reviews  # 追記

    @review_repl = Review.new

  end

  private

  def page_params
    params.require(:page).permit(:title,:category_id,:user_id).merge(user_id: current_user.id)
  end

end
