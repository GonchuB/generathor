class SiteController < ApplicationController

  def index
    @restaurant = Redo::Restaurant.find_by(slug: params[:slug])
  end

end
