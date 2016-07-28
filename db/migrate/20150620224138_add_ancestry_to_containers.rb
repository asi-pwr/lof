# frozen_string_literal: true
class AddAncestryToContainers < ActiveRecord::Migration
  def change
    add_column :containers, :ancestry, :string
    add_index :containers, :ancestry
  end
end
