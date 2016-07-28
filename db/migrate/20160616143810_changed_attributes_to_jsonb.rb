# frozen_string_literal: true
class ChangedAttributesToJsonb < ActiveRecord::Migration
  def change
    remove_index :items, column: :attributes
    remove_column :items, :attributes

    add_column :items, :attributes, :jsonb, null: false, default: '{}'
    add_index  :items, :attributes, using: :gin
  end
end
