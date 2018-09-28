class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :mod, :language, :eye_color, :height, :hobby
end
