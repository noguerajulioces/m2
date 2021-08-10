# frozen_string_literal: true

require 'application_system_test_case'

class PropertiesTest < ApplicationSystemTestCase
  setup do
    @property = properties(:one)
  end

  test 'visiting the index' do
    visit properties_url
    assert_selector 'h1', text: 'Properties'
  end

  test 'creating a Property' do
    visit properties_url
    click_on 'New Property'

    fill_in 'Address', with: @property.address
    fill_in 'City', with: @property.city_id
    fill_in 'Currency', with: @property.currency
    fill_in 'Expired date', with: @property.expired_date
    fill_in 'Price', with: @property.price
    fill_in 'Property detail', with: @property.property_detail_id
    fill_in 'Property type', with: @property.property_type
    fill_in 'Type offer', with: @property.type_offer
    fill_in 'User', with: @property.user_id
    fill_in 'Views', with: @property.views
    click_on 'Create Property'

    assert_text 'Property was successfully created'
    click_on 'Back'
  end

  test 'updating a Property' do
    visit properties_url
    click_on 'Edit', match: :first

    fill_in 'Address', with: @property.address
    fill_in 'City', with: @property.city_id
    fill_in 'Currency', with: @property.currency
    fill_in 'Expired date', with: @property.expired_date
    fill_in 'Price', with: @property.price
    fill_in 'Property detail', with: @property.property_detail_id
    fill_in 'Property type', with: @property.property_type
    fill_in 'Type offer', with: @property.type_offer
    fill_in 'User', with: @property.user_id
    fill_in 'Views', with: @property.views
    click_on 'Update Property'

    assert_text 'Property was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Property' do
    visit properties_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Property was successfully destroyed'
  end
end
