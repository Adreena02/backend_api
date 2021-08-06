class LikeSerializer < ActiveModel::Serializer
  attributes :id, :user_id
  belongs_to :user
  belongs_to :art
end
