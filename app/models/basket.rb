class Basket < ApplicationRecord
    belongs_to :article
    belongs_to :cart
  
    def total_price
      article.price * quantity.to_i
    end
end
