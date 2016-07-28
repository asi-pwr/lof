# frozen_string_literal: true
class CreateContainers < ActiveRecord::Migration
  def change
    create_table :containers do |t|
      t.string :name, null: false
      t.string :description
      t.timestamps null: false
    end
  end
end
