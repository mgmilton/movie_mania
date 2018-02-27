class Awards < ApplicationRecord
  has_many :awards_movies
  has_many :director_award
  has_many :movies, through: :awards_movies
  has_many :directors, through: :director_awards
end
