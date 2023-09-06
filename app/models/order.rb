class Order < ApplicationRecord
    belongs_to :User
    has_many :order_items 
end
