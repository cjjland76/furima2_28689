require "application_system_test_case"

class ItemsTest < ApplicationSystemTestCase
  setup do
    @item = items(:one)
  end

  test "visiting the index" do
    visit items_url
    assert_selector "h1", text: "Items"
  end

  test "creating a Item" do
    visit items_url
    click_on "New Item"

    fill_in "Category", with: @item.category
    fill_in "Delivery area", with: @item.delivery_area
    fill_in "Delivery day", with: @item.delivery_day
    fill_in "Delivery fee", with: @item.delivery_fee
    fill_in "Name", with: @item.name
    fill_in "Price", with: @item.price
    fill_in "Product", with: @item.product
    fill_in "Status", with: @item.status
    fill_in "User", with: @item.user_id
    fill_in "View count", with: @item.view_count
    click_on "Create Item"

    assert_text "Item was successfully created"
    click_on "Back"
  end

  test "updating a Item" do
    visit items_url
    click_on "Edit", match: :first

    fill_in "Category", with: @item.category
    fill_in "Delivery area", with: @item.delivery_area
    fill_in "Delivery day", with: @item.delivery_day
    fill_in "Delivery fee", with: @item.delivery_fee
    fill_in "Name", with: @item.name
    fill_in "Price", with: @item.price
    fill_in "Product", with: @item.product
    fill_in "Status", with: @item.status
    fill_in "User", with: @item.user_id
    fill_in "View count", with: @item.view_count
    click_on "Update Item"

    assert_text "Item was successfully updated"
    click_on "Back"
  end

  test "destroying a Item" do
    visit items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item was successfully destroyed"
  end
end
