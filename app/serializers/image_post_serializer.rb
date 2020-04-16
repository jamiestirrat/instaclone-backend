class ImagePostSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  #the 3 attriubutes to return from our get request...
  attributes :id, :username, :image_url

  #conditional to returns path to image if ImagePost model has an image attached
  def image_url
    rails_blob_path(object.image, disposition: "attachment", only_path: true) if object.image.attached?
  end
end
