class LikeSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :art_id
  belongs_to :user
  belongs_to :art
end
