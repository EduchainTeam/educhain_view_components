Rails.application.routes.draw do
  mount Lookbook::Engine, at: "lookbook"

  root "main#index"
end
