# frozen_string_literal: true

class CreateConnections < ActiveRecord::Migration[5.2]
  def change
    create_table :connections do |t|
      t.references :user
      t.references :connected_user
    end
  end
end
