class AddDirectorsToMovies < ActiveRecord::Migration[5.1]
  def change
    add_reference :movies, :director, foreign_key: true
  end
end
