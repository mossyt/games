require 'csv'    


csv_text = File.read('ign.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  games.create!(row.to_hash)
end

 

csv_text = File.read('score.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  scores.create!(row.to_hash)
end
