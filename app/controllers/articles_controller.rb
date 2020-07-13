class ArticlesController < ApplicationController
 
  def index
    @articles = Article.all
  end

  


  def show
      @article = Article.find(params[:id])
  end

  def new
  end


  def create

    # render - функция возвращает страницу
    # plain: params[:article].inspect - параметр функции
    # plain: - ключ хеша params[:article].inspect - значение хеша

    # render plain: params[:article].inspect


    @article = Article.new(article_params)

    if @article.valid?
      @article.save
      redirect_to @article #редирект на /articles/id
    else
      render action: 'new'
    end
  end


  private 

  def article_params
    params.require(:article).permit(:title, :text)
  end

end
