class CreateAwardsMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :awards_movies do |t|
      t.references :movies, foreign_key: true
      t.references :awards, foreign_key: true
    end
  end
end
