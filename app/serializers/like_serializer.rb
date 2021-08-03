class LikeSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :art_id
end
