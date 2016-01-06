Rails.application.routes.draw do
  get 'apis', to: "apis#index"
  get 'apis/index'
  get 'apis/typography'
  get 'static_pages/home'

  devise_for :users
  resources :typographies
  root "static_pages#home"
  devise_scope :user do
    get "sign_in", to: "devise/sessions#new"
    get "sign_up", to: "devise/registrations#new"
    delete "sign_out", to: "devise/sessions#destroy"
  end
  resources :users, only: [:index, :edit, :update]

end
