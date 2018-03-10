class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :score_phase
      t.string :title
      t.string :platform
      t.string :genre
      t.string :release_year
      t.string :release_month
      t.string :release_day

      t.timestamps null: false
    end
  end
end
