# frozen_string_literal: true

class AddOrganizerToEvents < ActiveRecord::Migration[5.2]
  def change
    add_reference :events, :organizer
  end
end
