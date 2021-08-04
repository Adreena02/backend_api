class ArtSerializer < ActiveModel::Serializer
  attributes :id, :title, :img_url, :artist_info
  has_many :likes
  # has_many :art_tags
  has_many :tags
end
