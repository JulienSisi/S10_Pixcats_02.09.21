class Cart < ApplicationRecord
    has_many :baskets, dependent: :destroy

    def add_article(article)
        current_article = baskets.find_by(article_id: article.id)
  
      if current_article
        current_article.increment(:quantity)
      else
        current_article = baskets.build(article_id: article.id)
      end
      current_article
    end
  
    def total_price
      baskets.to_a.sum { |article| article.total_price }
    end
end
