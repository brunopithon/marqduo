require "application_system_test_case"

class ServiceProvidersTest < ApplicationSystemTestCase
  setup do
    @service_provider = service_providers(:one)
  end

  test "visiting the index" do
    visit service_providers_url
    assert_selector "h1", text: "Service providers"
  end

  test "should create service provider" do
    visit service_providers_url
    click_on "New service provider"

    fill_in "Activity", with: @service_provider.activity
    fill_in "Obs", with: @service_provider.obs
    fill_in "Person", with: @service_provider.person
    fill_in "Phone number 1", with: @service_provider.phone_number_1
    fill_in "Phone number 2", with: @service_provider.phone_number_2
    click_on "Create Service provider"

    assert_text "Service provider was successfully created"
    click_on "Back"
  end

  test "should update Service provider" do
    visit service_provider_url(@service_provider)
    click_on "Edit this service provider", match: :first

    fill_in "Activity", with: @service_provider.activity
    fill_in "Obs", with: @service_provider.obs
    fill_in "Person", with: @service_provider.person
    fill_in "Phone number 1", with: @service_provider.phone_number_1
    fill_in "Phone number 2", with: @service_provider.phone_number_2
    click_on "Update Service provider"

    assert_text "Service provider was successfully updated"
    click_on "Back"
  end

  test "should destroy Service provider" do
    visit service_provider_url(@service_provider)
    click_on "Destroy this service provider", match: :first

    assert_text "Service provider was successfully destroyed"
  end
end
