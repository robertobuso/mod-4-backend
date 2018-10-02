class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :mod, :language, :eye_color, :height, :hobby, :img_url
end
