class OrderItem < ApplicationRecord
    belongs_to :Order
    belongs_to :MenuItem
    belongs_to :SubCategory
end
