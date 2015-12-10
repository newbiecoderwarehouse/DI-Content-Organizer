Rails.application.routes.draw do
  get 'static_pages/home'

  devise_for :users
  resources :typographies
  root "static_pages#home"
  devise_scope :user do
    get "sign_in", to: "devise/sessions#new"
    get "sign_up", to: "devise/registrations#new"
    delete "sign_out", to: "devise/sessions#destroy"
  end
end
