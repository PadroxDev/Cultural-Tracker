Rails.application.routes.draw do  
  get "about", to: "about#index", as: :about
  get "watchlist", to: "watchlist#index", as: :watchlist
  get "news-calendar", to: "news_calendar#index", as: :news_calendar
  get "recommendations", to: "recommendations#index", as: :recommendations

  get "sign_up", to: "registrations#new"
  post "sign_up_pute", to: "registrations#create"

  root to: "main#index";
end