class CreateArts < ActiveRecord::Migration[6.1]
  def change
    create_table :arts do |t|
      t.string :title
      t.string :artist_info
      t.string :genres

      t.timestamps
    end
  end
end
