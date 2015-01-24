class PagesController < ApplicationController
  def index
    @pages = Page.all
  end

  def show
    @page = Page.find_by_alias(params[:id])
  end

  def create
    redirect_to Page.create_default, notice: 'Page created'
  end
end
