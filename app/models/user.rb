class User < ApplicationRecord
    has_many :orders
    has_one_attached :image
end
