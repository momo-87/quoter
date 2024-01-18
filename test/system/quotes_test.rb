require "application_system_test_case"

class QuotesTest < ApplicationSystemTestCase
  test "Creating a new quote" do
    # when we visit the quotes Quotes#index page
    # we expect to see a title with the text "Quotes"
    visit quotes_path
    assert_selector "h1", text: "Quotes"

    # when we click on the "New Quote" button
    # we expect to be redirected to a page with the title "New Quote"
    click_on "New Quote"
    assert_selector "h1", text: "New Quote"

    # when we fill in the name input with "Momo quote"
    #  and we click on "Create Quote"
    fill_in "Name", with: "Momo quote"
    click_on "Create Quote"

    # we expect to be redirected to back to the page with the title "Quotes"
    # and we expect to see the text "Momo quote" added to the list
    assert_selector "h1", text: "Quotes"
    assert_text "Momo quote"
  end
end
