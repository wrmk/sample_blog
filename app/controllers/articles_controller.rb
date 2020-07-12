class ArticlesController < ApplicationController
 
  def new
  end

  #render - функция возвращает страницу
  # plain: params[:article].inspect - параметр функции
  # plain: - ключ хеша params[:article].inspect - значение хеша
  def create
    render plain: params[:article].inspect
  end

end
