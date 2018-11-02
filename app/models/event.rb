# frozen_string_literal: true

class Event < ApplicationRecord
  belongs_to :organizer, class_name: 'User'
  has_many :attendees, through: :event_attendees
end
