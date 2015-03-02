class SectionsController < ApplicationController

  layout 'admin'

  def index
    @section = Section.all
    @website = Website.first
  end

  def new
    @page = Page.find(params[:id])
    @section = Section.new
    @section_count = Section.count + 1
  end

  def create
    @section = Section.new(form_params)
    if @section.save
      flash[:success] = "Successful!"
      redirect_to page_path(:id => @section.page_id)
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  private

  def form_params
    params.require(:section).permit(:name, :content, :section_type, :position, :visible, :page_id)
  end

end