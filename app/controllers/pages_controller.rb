class PagesController < ApplicationController
  def index
    @page = Page.friendly.find('home')
  end
  def show
    @page = Page.friendly.find(params[:id])
  end
end
