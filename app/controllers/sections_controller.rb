class SectionsController < ApplicationController

  layout 'admin'

# Displays the section views for sections
  def index
    @section = Section.all
    @page = Page.find(params[:id])
    @website = Website.first
  end

# Creates new section, setting section association to a page and checking the section quantity
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

# Updates sections when edited
  def edit
    @section = Section.find(params[:id])
    @section_count = Section.count
  end
  def update
    @section = Section.find(params[:id])
    if @section.update(form_params)
      flash[:success] = "Successful!"
      redirect_to pages_path
    else
      render :edit
    end
  end

  private

  def form_params
    params.require(:section).permit(:name, :content, :section_type, :position, :columns, :visible, :page_id)
  end

end