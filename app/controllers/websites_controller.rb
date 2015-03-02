class WebsitesController < ApplicationController

  layout 'admin'
  
  def index
    @website = Website.first
  end

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
    params.require(:website).permit(:name)
  end

end