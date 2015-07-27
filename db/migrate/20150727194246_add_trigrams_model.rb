class AddTrigramsModel < ActiveRecord::Migration
  extend Fuzzily::Migration
  trigrams_owner_id_column_type = :uuid
end
