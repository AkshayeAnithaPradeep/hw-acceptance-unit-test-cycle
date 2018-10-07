class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  def self.find_with_same_director(id)
    current_director = self.select("director").where(id: id)
    self.where(director: current_director)
  end
end
