Rails.application.routes.draw do
  get '/test' , to: 'test#index'
  get 'test/index'
  get '/new' , to: 'new#index'
  get 'new/index'
  get '/test/articles' , to: 'test#articles'

  get '/books' , to: 'book#allBooks'
  post '/add_book'  , to: 'book#addBook'
  get '/book/:id' , to: 'book#getBook'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
