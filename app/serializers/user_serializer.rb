class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :email, :phone_number, :address,:pin_code

  attribute :image do |object, params|    
    if object&.image&.attached?
       Rails.application.routes.url_helpers.rails_blob_url(
        object.image, only_path: true
      )
    end
  end
end
