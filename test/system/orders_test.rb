require "application_system_test_case"

class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "should create order" do
    visit orders_url
    click_on "New order"

    fill_in "Bill no", with: @order.bill_no
    fill_in "Customer code", with: @order.customer_code
    fill_in "Customer", with: @order.customer_id
    fill_in "Date", with: @order.date
    fill_in "Discount", with: @order.discount
    fill_in "Order code", with: @order.order_code
    fill_in "Price", with: @order.price
    fill_in "Product name", with: @order.product_name
    fill_in "Quantity", with: @order.quantity
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "should update Order" do
    visit order_url(@order)
    click_on "Edit this order", match: :first

    fill_in "Bill no", with: @order.bill_no
    fill_in "Customer code", with: @order.customer_code
    fill_in "Customer", with: @order.customer_id
    fill_in "Date", with: @order.date
    fill_in "Discount", with: @order.discount
    fill_in "Order code", with: @order.order_code
    fill_in "Price", with: @order.price
    fill_in "Product name", with: @order.product_name
    fill_in "Quantity", with: @order.quantity
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "should destroy Order" do
    visit order_url(@order)
    click_on "Destroy this order", match: :first

    assert_text "Order was successfully destroyed"
  end
end
