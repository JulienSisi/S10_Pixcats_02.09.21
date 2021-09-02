class AddColBasket < ActiveRecord::Migration[5.2]
  def change
    
    add_reference  :baskets, :articles, index: true, foreign_key: true
    add_reference :baskets, :carts, index: true, foreign_key: true
    add_column  :baskets, :quantity, :integer, default: 1
  end
end
