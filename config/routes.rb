Rails.application.routes.draw do  
  get "about", to: "about#index", as: :about
  get "watchlist", to: "watchlist#index", as: :watchlist
  get "news-calendar", to: "news_calendar#index", as: :news_calendar
  get "recommendations", to: "recommendations#index", as: :recommendations

  get "sign-up", to: "registrations#new"
  post "sign-up", to: "registrations#create"
  
  get "sign-in", to: "sessions#new"
  post "sign-in", to: "sessions#create"

  delete "logout", to: "sessions#destroy", as: :logout

  root to: "main#index";
end