class WebsitesController < ApplicationController

  layout 'admin'
  
  def index
    @website = Website.first
  end

# Creates a new website
  def new
    @website = Website.new
  end
  def create
    @website = Website.new(form_params)
    if @website.save
      flash[:success] = "Successful!"
      redirect_to(:action => 'index')
    else
      render 'new'
    end
  end

# Update and edits website main settings
  def edit
    @website = Website.find(params[:id])
  end
  def update
    @website = Website.find(params[:id])
    if @website.update(form_params)
      flash[:success] = "Successful!"
      redirect_to websites_path
    else
      render :edit
    end
  end

  private

  def form_params
    params.require(:website).permit(:name, :theme, :tagline, :logo, :backgroundimage, :facebook, :instagram, :pinterest, :youtube, :twitter, :footer)
  end

end