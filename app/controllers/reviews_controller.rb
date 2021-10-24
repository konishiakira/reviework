class ReviewsController < ApplicationController
  def index
  end

  def new

  end

  def create
    @review = Review.new(review_params)

    if @review.save
      redirect_to page_path(@review.page)
    else

      # 保存できなかったら、トップに戻る（完成）
      query = "SELECT * FROM pages"
      @pages = Page.find_by_sql(query)
      render "pages/index"
    end
  end

  private
  def review_params
    params.require(:review).permit(:comment).merge(user_id: current_user.id,page_id: params[:review][:page_id])
  end
end