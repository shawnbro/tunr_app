class CreateSong < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :year
      t.references :artist
    end
  end
end
