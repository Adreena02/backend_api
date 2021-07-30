class CreateArtTags < ActiveRecord::Migration[6.1]
  def change
    create_table :art_tags do |t|
      t.integer :art_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
