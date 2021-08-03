class ArtTagSerializer < ActiveModel::Serializer
  attributes :id, :art_id, :tag_id
  has_many :tags, :arts
end
