class ChangedAttributesName < ActiveRecord::Migration
  def change
  	remove_index :items, column: :attributes
  	remove_column :items, :attributes

  	add_column :items, :features, :jsonb, null: false, default: "{}"
    add_index  :items, :features, using: :gin
  end
end
