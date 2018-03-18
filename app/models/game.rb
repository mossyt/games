class Game < ActiveRecord::Base
  has_one :score
end

    def self.search(search)
      if search
          where(["title LIKE ?","%#(search)%"])
      else
          all
      end
    end
