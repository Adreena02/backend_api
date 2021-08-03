class ArtSerializer < ActiveModel::Serializer
  attributes :id, :title, :img_url, artist_info
  has_many :likes, :art_tags
end
