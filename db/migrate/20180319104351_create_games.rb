class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :platform
      t.string :score_phrase
      t.integer :score
      t.string :genre
      t.integer :release_year
      t.integer :release_month
      t.integer :release_day

      t.timestamps null: false
    end
  end
end
