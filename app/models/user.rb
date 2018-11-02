# frozen_string_literal: true

class User < ApplicationRecord
  has_many :events, foreign_key: 'organizer_id'
  has_many :events_attending, class_name: 'EventAttendees'
  has_many :connections_to, class_name: 'Connections', foreign_key: 'user_id'
  has_many :connections_from, class_name: 'Connections', foreign_key: 'connected_user_id'

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :confirmable, :lockable,
         :timeoutable, :trackable, :omniauthable

  def connections
    Connections.where(user_id: id).or(Connections.where(connected_user_id: id))
  end
end
