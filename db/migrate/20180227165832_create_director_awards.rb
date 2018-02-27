class CreateDirectorAwards < ActiveRecord::Migration[5.1]
  def change
    create_table :director_awards do |t|
      t.references :awards, foreign_key: true
      t.references :director, foreign_key: true
    end
  end
end
