require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  setup do
    @restaurant = Restaurant.new(
      name: 'jia',
      street_address: 'abc',
      postal_code: '612321',
      website_url: 'http://google.com'
    )
  end

  test '#website_url is invalid' do
    @restaurant.website_url = 'google.com'

    assert_not @restaurant.valid?

    assert_equal 'Website url must be a valid URL',
      @restaurant.errors.full_messages.first
  end

  test '#website_url is valid' do
    assert @restaurant.valid?

    @restaurant.website_url = 'https://google.com'
    assert @restaurant.valid?
  end
end
