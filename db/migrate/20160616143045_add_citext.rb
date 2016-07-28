# frozen_string_literal: true
class AddCitext < ActiveRecord::Migration
  def up
    enable_extension 'citext'
  end

  def down
    disable_extension 'citext'
  end
end
