module SiteHelper

  def google_map_url(restaurant)
    lat, long = restaurant.location.split(",")

    "https://www.google.com/maps/embed/v1/place?q=#{lat}%2C#{long}&key=#{Rails.application.secrets.maps_api_key}"
  end

end
