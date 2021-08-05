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
            if !tags[tag.id]
                tags[tag.id] = 1
            else
                tags[tag.id] +=1
            end
        end
        return tags
    end

    def top_three
        top_tags_arr = top_tags.max_by(3){|k,v| v} # [["cute", 2], ["energetic", 2], ["super", 1]]
        
        # use tag id to grab tag instance
        tag_instances = top_tags_arr.map{|tag| Tag.find(tag[0])}
        
        # for each tag instance get all artworks (tag.arts)
        tag_arts = tag_instances.map{|tag| tag.arts}
        
        # concat array of all arts from all 3 tags
        tag_arts.flatten



        # not suggest art that is already liked 
        # dedupe arra
    end
end


# find tags by name, grab paintings
# tags.max_by(3){|k,v| v}