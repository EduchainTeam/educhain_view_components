Rails.application.routes.draw do
  mount Lookbook::Engine, at: "/lookbook"
  #mount Educhain::ViewComponents::Engine => "/educhain_view_components"
end
