# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'    



CSV.foreach(Rails.root.join("db/seeds_data/games.csv"), headers: true) do |row|
  Game.find_or_create_by(name: row[0], platform: row[1], score_phrase: row[2], score: row[3], genre: row[4], release_year: row[5], release_month: row[6], release_day: row[7])
end

    
CSV.foreach(Rails.root.join("db/seeds_data/scores.csv"), headers: true) do |row|
  Score.find_or_create_by(name: row[0], score: row[1])
end



