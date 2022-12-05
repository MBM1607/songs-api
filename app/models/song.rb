# frozen_string_literal: true

require 'csv'

# Model for songs resource
class Song < ApplicationRecord
  include Searchable

  def self.import_csv!
    filepath = 'public/tcc_ceds_music.csv'
    res = CSV.parse(File.read(filepath), headers: true)
    res.each_with_index do |s, _ind|
      Song.create!(
        artist: s['artist_name'],
        title: s['track_name'],
        genre: s['genre'],
        lyrics: s['lyrics']
      )
    end
  end
end
