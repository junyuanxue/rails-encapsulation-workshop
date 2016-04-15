module ArticlesHelper
  def word_count(article)
    article.text.split.count
  end
end
