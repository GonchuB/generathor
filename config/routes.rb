Rails.application.routes.draw do
  get "/landing" => "landing#index"

  get "/:slug" => "site#index"
  
  root to: "landing#index"
end
