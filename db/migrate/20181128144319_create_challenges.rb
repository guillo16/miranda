class CreateChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges do |t|
      t.references :user, foreign_key: true
      t.references :video, foreign_key: true
      t.integer :opponent_id

      t.timestamps
    end
  end
end
