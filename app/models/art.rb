class Art < ApplicationRecord
    has_many :likes
    has_many :users, through: :likes
    has_many :art_tags
    has_many :tags, through: :art_tags
end
