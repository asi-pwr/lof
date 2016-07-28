# frozen_string_literal: true
class AddAttributesToItem < ActiveRecord::Migration
  def change
    add_column :items, :attributes, :hstore
    add_index :items, :attributes, using: :gist
  end
end
