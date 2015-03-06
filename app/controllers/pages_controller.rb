class PagesController < ApplicationController

  layout 'admin'
  
# Displays the page views for pages
  def index
    @page = Page.all
    @website = Website.first
  end
  def show
    @page = Page.find(params[:id])
    @section = Section.where({:page_id => @page.id})
  end

# Creates new website, setting page association to website and checking the page quantity
  def new
    @website = Website.first
    @page = Page.new({:website_id => @website.id})
    @page_count = Page.count + 1
  end
  def create
    @page = Page.new(form_params)
    if @page.save
      flash[:success] = "Successful!"
      redirect_to(:action => 'index')
    else
      render 'new'
    end
  end

# Updates pages when edited
  def edit
    @website = Website.first
    @page = Page.find(params[:id])
    @page_count = Page.count
  end
  def update
    @page = Page.find(params[:id])
    if @page.update(form_params)
      flash[:success] = "Successful!"
      redirect_to pages_path
    else
      render :edit
    end
  end

  private

  def form_params
    params.require(:page).permit(:name, :link, :page_type, :background, :position, :visible, :website_id)
  end

end