class HomeController < ApplicationController

  def index
    @websites = Website.all
    @pages = Page.all
    @sections = Section.all
  end

end