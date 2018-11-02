# frozen_string_literal: true

require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test 'should get index' do
    get events_url
    assert_response :success
  end

  test 'should get new' do
    get new_event_url
    assert_response :success
  end

  test 'should create event' do
    assert_difference('Event.count') do
      post events_url, params: { event: { about: @event.about, address: @event.address, created_at: @event.created_at, date: @event.date, is_private: @event.is_private, location: @event.location, photo_url: @event.photo_url, ticket_link: @event.ticket_link, time: @event.time, title: @event.title, updated_at: @event.updated_at } }
    end

    assert_redirected_to event_url(Event.last)
  end

  test 'should show event' do
    get event_url(@event)
    assert_response :success
  end

  test 'should get edit' do
    get edit_event_url(@event)
    assert_response :success
  end

  test 'should update event' do
    patch event_url(@event), params: { event: { about: @event.about, address: @event.address, created_at: @event.created_at, date: @event.date, is_private: @event.is_private, location: @event.location, photo_url: @event.photo_url, ticket_link: @event.ticket_link, time: @event.time, title: @event.title, updated_at: @event.updated_at } }
    assert_redirected_to event_url(@event)
  end

  test 'should destroy event' do
    assert_difference('Event.count', -1) do
      delete event_url(@event)
    end

    assert_redirected_to events_url
  end
end
