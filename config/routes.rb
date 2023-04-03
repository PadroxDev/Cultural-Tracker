Rails.application.routes.draw do  
  get "about", to: "about#index", as: :about
  get "watchlist", to: "watchlist#index", as: :watchlist
  get "news-calendar", to: "news_calendar#index", as: :news_calendar
  get "recommendations", to: "recommendations#index", as: :recommendations

  get "sign-up", to: "registrations#new", as: :sign_up
  post "sign-up", to: "registrations#create"
  
  get "sign-in", to: "sessions#new", as: :sign_in
  post "sign-in", to: "sessions#create"

  get "password", to: "passwords#edit", as: :edit_password
  patch "password", to: "passwords#update"

  get "password/reset", to: "password_resets#new", as: :password_reset
  post "password/reset", to: "password_resets#create"
  get "password/reset/edit", to: "password_resets#edit", as: :password_reset_edit
  patch "password/reset/edit", to: "password_resets#update"

  delete "logout", to: "sessions#destroy", as: :logout

  root to: "main#index";
end