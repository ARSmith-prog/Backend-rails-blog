class PagesController < ApplicationController
#another way to do the set pages method and apply it to functions
  #before_action :set_page, except: [:index, :new, :create]

  
  def index
    @pages = Page.all
  end
  def show
    set_page
  end

  def new
    @page = Page.new
  end

  def create
    @page = Page.new(page_params)
    @page.save
    redirect_to @page
  end

  def edit
    set_page
  end

  def update
    set_page
    @page.update(page_params)
    redirect_to @page
  end

  def destroy
    set_page
    @page.destroy
    redirect_to pages_path
  end

  private
    def page_params
      params.require(:page).permit(:title, :body, :slug)
    end

    def set_page
      @page = Page.find(params[:id])
    end


end
