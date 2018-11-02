# frozen_string_literal: true

require 'application_system_test_case'

class EventsTest < ApplicationSystemTestCase
  setup do
    @event = events(:one)
  end

  test 'visiting the index' do
    visit events_url
    assert_selector 'h1', text: 'Events'
  end

  test 'creating a Event' do
    visit events_url
    click_on 'New Event'

    fill_in 'About', with: @event.about
    fill_in 'Address', with: @event.address
    fill_in 'Created At', with: @event.created_at
    fill_in 'Date', with: @event.date
    fill_in 'Is Private', with: @event.is_private
    fill_in 'Location', with: @event.location
    fill_in 'Photo Url', with: @event.photo_url
    fill_in 'Ticket Link', with: @event.ticket_link
    fill_in 'Time', with: @event.time
    fill_in 'Title', with: @event.title
    fill_in 'Updated At', with: @event.updated_at
    click_on 'Create Event'

    assert_text 'Event was successfully created'
    click_on 'Back'
  end

  test 'updating a Event' do
    visit events_url
    click_on 'Edit', match: :first

    fill_in 'About', with: @event.about
    fill_in 'Address', with: @event.address
    fill_in 'Created At', with: @event.created_at
    fill_in 'Date', with: @event.date
    fill_in 'Is Private', with: @event.is_private
    fill_in 'Location', with: @event.location
    fill_in 'Photo Url', with: @event.photo_url
    fill_in 'Ticket Link', with: @event.ticket_link
    fill_in 'Time', with: @event.time
    fill_in 'Title', with: @event.title
    fill_in 'Updated At', with: @event.updated_at
    click_on 'Update Event'

    assert_text 'Event was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Event' do
    visit events_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Event was successfully destroyed'
  end
end
