Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'bio', to: 'pages#bio'
  get 'currently_reading', to: 'pages#currently_reading'
  get 'what_we_were_promised', to: 'pages#wwwp'
  get 'news', to: 'pages#news'
  get 'events', to: 'pages#events'
  get 'other_work', to: 'pages#other_work'
  get 'contact', to: 'pages#contact'

  root to: 'pages#home'
end
