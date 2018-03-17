class ArticlesController < ApplicationController
  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
  end

  def create
    article = Article.new(article_permit_params)
    article.image.attach(params[:article][:image])
    if article.save
      redirect_to article
    else
      render new
    end
  end

  private

  def article_permit_params
    params.require(:article).permit(:title, :body)
  end
end
