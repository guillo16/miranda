class CreateVideos < ActiveRecord::Migration[5.2]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :url
      t.integer :difficulty
      t.string :category
      t.text :transcript

      t.timestamps
    end
  end
end