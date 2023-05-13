require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:one)
  end

  test "visiting the index" do
    visit products_url
    assert_selector "h1", text: "Products"
  end

  test "should create product" do
    visit products_url
    click_on "New product"

    fill_in "Discount", with: @product.discount
    fill_in "Price", with: @product.price
    fill_in "Product describle", with: @product.product_describle
    fill_in "Product", with: @product.product_id
    fill_in "Supplier", with: @product.supplier_id
    click_on "Create Product"

    assert_text "Product was successfully created"
    click_on "Back"
  end

  test "should update Product" do
    visit product_url(@product)
    click_on "Edit this product", match: :first

    fill_in "Discount", with: @product.discount
    fill_in "Price", with: @product.price
    fill_in "Product describle", with: @product.product_describle
    fill_in "Product", with: @product.product_id
    fill_in "Supplier", with: @product.supplier_id
    click_on "Update Product"

    assert_text "Product was successfully updated"
    click_on "Back"
  end

  test "should destroy Product" do
    visit product_url(@product)
    click_on "Destroy this product", match: :first

    assert_text "Product was successfully destroyed"
  end
end