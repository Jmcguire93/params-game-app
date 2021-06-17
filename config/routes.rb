Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/display_name", controller: "params", action: "display_name"

  get "/guess", controller: "params", action: "guess"
end
