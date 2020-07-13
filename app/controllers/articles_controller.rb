class ArticlesController < ApplicationController
 
  def new
  end

  #render - функция возвращает страницу
  # plain: params[:article].inspect - параметр функции
  # plain: - ключ хеша params[:article].inspect - значение хеша
  def create
    @article = Article.new(article_params)

    if @article.valid?
      @article.save
    else
      render action: 'new'
    end
  end


  private 

  def article_params
    params.require(:article).permit(:title, :text)
  end

end
