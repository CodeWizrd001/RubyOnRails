class BookController < ApplicationController
    skip_before_action :verify_authenticity_token
    def allBooks 
        @books = Book.all
        render json: books , status: :ok
    end
    
    def getBook 
        @book = Book.find(params[:id])
        render json: book , status: :ok 
    end 

    def addBook
        @book = Book.new(book_params)
        
        puts @book 

        if @book.save 
            render json: {status: 'SUCCESS' , book: @book} , status: :ok
        else
            render json: {status: 'FAILED' , error:@book.errors} , status: :bad_request
        end
    end

    private 
        def book_params
            params.permit(:B_id,:B_title,:Author,:Publisher,:Year)
        end
end
