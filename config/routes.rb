Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'

  get 'bio', to: 'pages#bio'
  get 'currently_reading', to: 'pages#currently_reading'
  get 'book', to: 'pages#what_we_were_promised'
  get 'book_club', to: 'pages#book_club'
  get 'news', to: 'pages#news'
  get 'events', to: 'pages#events'
  get 'other_work', to: 'pages#other_work'
  get 'contact', to: 'pages#contact'

  post 'contact', to: 'pages#contact_send'

  get '*path', to: redirect('/')
end
