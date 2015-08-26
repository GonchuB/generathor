Rails.application.routes.draw do
  get "/:slug" => "site#index"
end
