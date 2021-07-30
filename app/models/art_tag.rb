class ArtTag < ApplicationRecord
    belongs_to :Art
    belongs_to :Tag
end
