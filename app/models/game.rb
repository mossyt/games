class Game < ActiveRecord::Base
   def self.search(search, page)
  where("name LIKE ? OR genre LIKE ? OR platform LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%").paginate(page: page, per_page: 30).order('id DESC')
   end
end


  