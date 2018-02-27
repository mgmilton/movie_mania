class AddDirectorIdToAwards < ActiveRecord::Migration[5.1]
  def change
    add_reference :awards, :director, foreign_key: true
  end
end
