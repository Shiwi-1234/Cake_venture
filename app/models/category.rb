class Category < ApplicationRecord
  belongs_to :menu_item
  has_many :sub_categories
end
