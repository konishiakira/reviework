class ReviewsController < ApplicationController
  def index

  end

  def new

  end

  def create
    # binding.pry
    @review = Review.new(review_params)
    @review_repl = Review.new(review_repl_params)
    # binding.pry
    if @review.save || @review_repl.save
      redirect_to page_path(@review.page)
    else

      # 保存できなかったら、トップに戻る（完成）
      query = "SELECT * FROM pages"
      @pages = Page.find_by_sql(query)
      render "pages/index"
    end


  end

  def show

  end

  private
  def review_params
    params.require(:review).permit(:comment,:repl).merge(user_id: current_user.id,page_id: params[:review][:page_id])
  end

  def review_repl_params
    params.require(:review).permit(:comment,:repl).merge(user_id: current_user.id,page_id: params[:review][:page_id])
  end
end