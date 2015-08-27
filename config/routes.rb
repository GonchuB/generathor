Rails.application.routes.draw do
  get "/landing" => "landing#index"

  get "/:slug" => "site#index"
  root to: "site#index"
end
