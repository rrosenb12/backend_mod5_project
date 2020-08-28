class UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :username, :password, :pro_pic

  def pro_pic
    if object.pro_pic.attached?
      {
        url: rails_blob_url(object.pro_pic)
      }
    end
  end
end
