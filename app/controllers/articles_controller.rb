class ArticlesController < ApplicationController
  def show
    @article = Article.find(params[:id])
    @word_count = @article.text.split.count
  end
end
