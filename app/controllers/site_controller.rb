class SiteController < ApplicationController

  def index
    @restaurant = Redo::Restaurant.find_by(slug: params.fetch(:slug, "la-cabrera"))
  end

end
