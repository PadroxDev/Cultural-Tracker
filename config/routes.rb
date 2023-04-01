Rails.application.routes.draw do
  root to: "main#index";
  
  get "about", to: "about#index", as: :about;
  get "watchlist", to: "watchlist#index", as: :watchlist;
  get "news-calendar", to: "news_calendar#index", as: :news_calendar;
  get "recommendations", to: "recommendations#index", as: :recommendations;
end