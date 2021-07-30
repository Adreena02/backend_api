class User < ApplicationRecord
    has_many :likes
    has_many :arts, through: :likes
end
