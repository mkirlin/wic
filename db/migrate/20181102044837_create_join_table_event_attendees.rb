# frozen_string_literal: true

class CreateJoinTableEventAttendees < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :events do |t|
      t.index %i[user_id event_id]
      t.index %i[event_id user_id]
    end
  end
end
