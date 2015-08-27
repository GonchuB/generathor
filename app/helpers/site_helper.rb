module SiteHelper

  def google_map_url(restaurant)
    lat, long = restaurant.location.split(",")

    "https://www.google.com/maps/embed/v1/place?q=#{lat}%2C#{long}&key=#{Rails.application.secrets.maps_api_key}"
  end

  def photoswipe_items(restaurant_photos)
    restaurant_photos.map do |image|
      {
        src: image.photo.best.url,
        w: image.image_width,
        h: image.image_height
      }
    end.to_json
  end

end
