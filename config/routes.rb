Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "posts#index"

  resources :posts

  get 'post/reason', to: 'posts#reason', as: :reason
  get 'post/about_this', to: 'posts#about_this', as: :about_this

end
