Rails.application.routes.draw do
  get '/test' , to: 'test#index'
  get 'test/index'
  get '/new' , to: 'new#index'
  get 'new/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
