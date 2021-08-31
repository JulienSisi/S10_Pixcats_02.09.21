class Article < ApplicationRecord
    belongs_to :user
    belongs_to :basket
 #   belongs_to :basket, through: :user
end
