require 'pry'
class User < ApplicationRecord
    has_many :likes
    has_many :arts, through: :likes
    has_many :tags, through: :arts


    validates :email, presence: true
    validates :name, presence: true
    validates :email, uniqueness: true
    
    def top_tags
        tags = {}
        self.tags.each do |tag|
            if !tags[tag.name]
                tags[tag.name] = 1
            else
                tags[tag.name] +=1
            end
        end
    end
end


# find tags by name, grab paintings
# tags.max_by(3){|k,v| v}