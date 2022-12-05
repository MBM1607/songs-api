# frozen_string_literal: true

# Concern for Elasticsearch functionality on Songs model
module Searchable
  extend ActiveSupport::Concern

  included do
    include Elasticsearch::Model
    include Elasticsearch::Model::Callbacks

    mapping do
      indexes :artist, type: :text
      indexes :title, type: :text
      indexes :lyrics, type: :text
      indexes :genre, type: :keyword
    end

    # Build and run the search query on elasticsearch cluster
    def self.search(query)
      puts query
    end
  end
end
