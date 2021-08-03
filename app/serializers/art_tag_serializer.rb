class ArtTagSerializer < ActiveModel::Serializer
  attributes :id, :art_id, :tag_id
  has_many :tags
  has_many :arts
end
