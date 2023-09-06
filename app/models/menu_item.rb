class MenuItem < ApplicationRecord
    belongs_to :Bakery , optional: true 
    has_many :categories
end