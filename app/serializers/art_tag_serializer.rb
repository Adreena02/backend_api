class ArtTagSerializer < ActiveModel::Serializer
  attributes :id, :art_id, :tag_id
  belongs_to :tag
  belongs_to :art
end
