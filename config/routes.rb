Rails.application.routes.draw do
  get 'meetings/show'
  get 'meetings/create'
  get 'meetings/new'
  get 'coaches/index'
  get 'coaches/show'
  get 'coaches/create'
  get 'coaches/new'
  get 'users/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
