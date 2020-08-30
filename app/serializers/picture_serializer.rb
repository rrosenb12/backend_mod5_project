class PictureSerializer < ActiveModel::Serializer
    include Rails.application.routes.url_helpers
    attributes :id, :description, :user_id, :image

    def image
        if object.image.attached?
            {
                url: rails_blob_url(object.image)
            }
        end
    end
  end