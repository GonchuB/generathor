Rails.application.routes.draw do
  get "/:slug" => "site#index"

  root to: "site#index"
end
