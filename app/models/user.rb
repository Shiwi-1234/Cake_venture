class User < ApplicationRecord
    has_many :orders
    has_one_attached :image
    def self.ransackable_attributes(auth_object = nil)
        ["address", "created_at", "id", "name", "password", "phone_number", "pin_code", "updated_at", "user_email"]
    end
end
