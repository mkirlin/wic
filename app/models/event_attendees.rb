# frozen_string_literal: true

class EventAttendees < ApplicationRecord
  belongs_to :user
  belongs_to :event
end
