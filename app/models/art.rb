require 'pry'
class Art < ApplicationRecord
    has_many :likes
    has_many :users, through: :likes
    has_many :art_tags
    has_many :tags, through: :art_tags

    def self.recommendations (user)
        art = Art.all
        filtered_art = art.select do |faves|
            !faves.users.include?(user)
        end
        filtered_art.select do |recs|
            recs.tags.include?(user.top_three[0])    
        binding.pry
        end
    end
end


# grab all painting that haven't been liked (where_not)
# find all paintings that match 2 of 3 top_tags
# grab 2-3 paintings that fit criteria
# return random* painting if nothing is returned from search