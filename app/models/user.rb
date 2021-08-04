class User < ApplicationRecord
    has_many :likes
    has_many :arts, through: :likes

    validates :email, presence: true
    validates :name, presence: true
    validates :email, uniqueness: true
    

end
