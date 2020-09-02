class Cart < ApplicationRecord
    belongs_to :shopper
    has_many :cart_items
    has_many :items, through: :cart_items
end
