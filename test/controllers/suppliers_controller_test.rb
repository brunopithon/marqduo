require "test_helper"

class SuppliersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @supplier = suppliers(:one)
  end

  test "should get index" do
    get suppliers_url
    assert_response :success
  end

  test "should get new" do
    get new_supplier_url
    assert_response :success
  end

  test "should create supplier" do
    assert_difference("Supplier.count") do
      post suppliers_url, params: { supplier: { activity: @supplier.activity, address: @supplier.address, commission: @supplier.commission, company: @supplier.company, email: @supplier.email, obs: @supplier.obs, phone_number_1: @supplier.phone_number_1, phone_number_2: @supplier.phone_number_2, responsible: @supplier.responsible } }
    end

    assert_redirected_to supplier_url(Supplier.last)
  end

  test "should show supplier" do
    get supplier_url(@supplier)
    assert_response :success
  end

  test "should get edit" do
    get edit_supplier_url(@supplier)
    assert_response :success
  end

  test "should update supplier" do
    patch supplier_url(@supplier), params: { supplier: { activity: @supplier.activity, address: @supplier.address, commission: @supplier.commission, company: @supplier.company, email: @supplier.email, obs: @supplier.obs, phone_number_1: @supplier.phone_number_1, phone_number_2: @supplier.phone_number_2, responsible: @supplier.responsible } }
    assert_redirected_to supplier_url(@supplier)
  end

  test "should destroy supplier" do
    assert_difference("Supplier.count", -1) do
      delete supplier_url(@supplier)
    end

    assert_redirected_to suppliers_url
  end
end
