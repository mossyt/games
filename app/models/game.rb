class Game < ActiveRecord::Base
   def self.search(search)
  where("name LIKE ? OR genre LIKE ? OR platform LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
   end

end