# frozen_string_literal: true

json.extract! event, :id, :title, :photo_url, :date, :ticket_link, :about, :created_at, :updated_at, :time, :location, :address, :is_private, :created_at, :updated_at
json.url event_url(event, format: :json)
