require "test_helper"

class ApartmentTest < ActiveSupport::TestCase
  test  'an apartment should have a name at creation' do
    # Arrange
    apartment = Apartment.create!(name: '')
    # Act 

    # Assert 
    refute apartment.valid?, 'Apartment should have a name' 
  end

  test 'an apartment should have a location at creation' do
    # Arrange
    apartment = Apartment.create!(name: 'Apartment1', location: '')

    # Act
    # Assert 
    refute apartment.valid?, 'Apartment should have a location'
  end

  test 'apartment should have a contact person at creation' do
    apartment = Apartment.create!(name: 'Apartment1', location: 'Location1', contact_person: '')

    # Assert 
    refute apartment.valid?, 'Apartment should have a contact person'
  end 
end
