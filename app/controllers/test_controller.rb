class TestController < ApplicationController
  def index
  end

  def articles
    @articles = Article.all
    render json: @articles 
  end
end
