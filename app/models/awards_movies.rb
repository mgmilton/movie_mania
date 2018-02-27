class AwardsMovies < ApplicationRecord
  belongs_to :awards
  belongs_to :movies
  belongs_to :directors
end
