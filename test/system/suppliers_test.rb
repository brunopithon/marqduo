require "application_system_test_case"

class SuppliersTest < ApplicationSystemTestCase
  setup do
    @supplier = suppliers(:one)
  end

  test "visiting the index" do
    visit suppliers_url
    assert_selector "h1", text: "Suppliers"
  end

  test "should create supplier" do
    visit suppliers_url
    click_on "New supplier"

    fill_in "Activity", with: @supplier.activity
    fill_in "Address", with: @supplier.address
    check "Commission" if @supplier.commission
    fill_in "Company", with: @supplier.company
    fill_in "Email", with: @supplier.email
    fill_in "Obs", with: @supplier.obs
    fill_in "Phone number 1", with: @supplier.phone_number_1
    fill_in "Phone number 2", with: @supplier.phone_number_2
    fill_in "Responsible", with: @supplier.responsible
    click_on "Create Supplier"

    assert_text "Supplier was successfully created"
    click_on "Back"
  end

  test "should update Supplier" do
    visit supplier_url(@supplier)
    click_on "Edit this supplier", match: :first

    fill_in "Activity", with: @supplier.activity
    fill_in "Address", with: @supplier.address
    check "Commission" if @supplier.commission
    fill_in "Company", with: @supplier.company
    fill_in "Email", with: @supplier.email
    fill_in "Obs", with: @supplier.obs
    fill_in "Phone number 1", with: @supplier.phone_number_1
    fill_in "Phone number 2", with: @supplier.phone_number_2
    fill_in "Responsible", with: @supplier.responsible
    click_on "Update Supplier"

    assert_text "Supplier was successfully updated"
    click_on "Back"
  end

  test "should destroy Supplier" do
    visit supplier_url(@supplier)
    click_on "Destroy this supplier", match: :first

    assert_text "Supplier was successfully destroyed"
  end
end
