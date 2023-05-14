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

    fill_in "Address", with: @supplier.address
    fill_in "Discount", with: @supplier.discount
    fill_in "Email", with: @supplier.email
    fill_in "Pay method", with: @supplier.pay_method
    fill_in "Product name", with: @supplier.product_name
    fill_in "Sup code", with: @supplier.sup_code
    fill_in "Supplier name", with: @supplier.supplier_name
    click_on "Create Supplier"

    assert_text "Supplier was successfully created"
    click_on "Back"
  end

  test "should update Supplier" do
    visit supplier_url(@supplier)
    click_on "Edit this supplier", match: :first

    fill_in "Address", with: @supplier.address
    fill_in "Discount", with: @supplier.discount
    fill_in "Email", with: @supplier.email
    fill_in "Pay method", with: @supplier.pay_method
    fill_in "Product name", with: @supplier.product_name
    fill_in "Sup code", with: @supplier.sup_code
    fill_in "Supplier name", with: @supplier.supplier_name
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
