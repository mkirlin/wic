# frozen_string_literal: true

class Connections < ApplicationRecord
  belongs_to :user
  belongs_to :connected_user, class_name: 'User'
end
