require "application_system_test_case"

class HomePagesTest < ApplicationSystemTestCase
  setup do
    @home_page = home_pages(:one)
  end

  test "visiting the index" do
    visit home_pages_url
    assert_selector "h1", text: "Home pages"
  end

  test "should create home page" do
    visit home_pages_url
    click_on "New home page"

    fill_in "Description", with: @home_page.description
    fill_in "Title", with: @home_page.title
    click_on "Create Home page"

    assert_text "Home page was successfully created"
    click_on "Back"
  end

  test "should update Home page" do
    visit home_page_url(@home_page)
    click_on "Edit this home page", match: :first

    fill_in "Description", with: @home_page.description
    fill_in "Title", with: @home_page.title
    click_on "Update Home page"

    assert_text "Home page was successfully updated"
    click_on "Back"
  end

  test "should destroy Home page" do
    visit home_page_url(@home_page)
    click_on "Destroy this home page", match: :first

    assert_text "Home page was successfully destroyed"
  end
end
