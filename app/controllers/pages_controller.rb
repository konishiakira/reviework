class PagesController < ApplicationController

  def index
  end

  def new
    @page = Page.new
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
  end

  private

  def page_params
    params.require(:page).permit(:title,:category_id).merge(user_id: current_user.id)
  end

end
