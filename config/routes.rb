Rails.application.routes.draw do
  devise_for :users, controllers: {
    confirmations: "users/confirmations",
    :omniauth_callbacks => "users/omniauth_callbacks",
    registrations: "users/registrations"
  }
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
 end
 resources :users, only: [:index, :show, :destroy, :edit, :update]

  root "static_pages#home"
  get "about_us", to: "static_pages#about_us"
  get "privacy_policy", to: "static_pages#privacy_policy"
end
