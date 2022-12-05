# frozen_string_literal: true

# Create songs table in database
class CreateSongs < ActiveRecord::Migration[7.0]
  def change
    create_table :songs do |t|
      t.string :title
      t.string :artist
      t.string :genre
      t.text :lyrics

      t.timestamps
    end
  end
end
