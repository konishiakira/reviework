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

    # <%= form_with(model: [@review, @repl], local: true) do |form| %>
    # @repls = @reviews.repls.includes(:review)
  end

  private

  def page_params
    params.require(:page).permit(:title,:category_id,:user_id).merge(user_id: current_user.id)
  end

end
