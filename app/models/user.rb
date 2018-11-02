# frozen_string_literal: true

class User < ApplicationRecord
  has_many :events, foreign_key: 'organizer_id'
  has_many :events_attending, through: :event_attendees

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :confirmable, :lockable,
         :timeoutable, :trackable, :omniauthable
end
