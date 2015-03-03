class HomeController < ApplicationController

  def index
    @websites = Website.first
    @pages = Page.all
    @sections = Section.all
  end

end