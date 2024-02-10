require "application_system_test_case"

class QuotesTest < ApplicationSystemTestCase
  setup do
    @quote = Quote.ordered.first # Reference to the first fixture quote (see test/fixtures/quotes.yml)
  end

  test "Showing a quote" do
    # When we visite the quotes_path, we see a heading h1 with text "Quotes"
    visit quotes_path

    # When we click on the quote name we expect to see a heading with the text "@quote.name"
    click_link @quote.name
    assert_selector "h1", text: @quote.name
  end

  test "Creating a new quote" do
    # When we visite the quotes_path, we see a heading h1 with text "Quotes"
    visit quotes_path
    assert_selector "h1", text: "Quotes"

    # when we click on the "New Quote" button
    click_on "New Quote"
    # fill in the name input with "Momo quote"
    fill_in "Name", with: "Momo quote"

    # we expect the new quote form to be appended to the page right below the header
    assert_selector "h1", text: "Quotes"
    click_on "Create Quote"

    # we expect to be on the page with the title "Quotes"
    # and we expect to see the text "Momo quote" added to the list
    assert_selector "h1", text: "Quotes"
    assert_text "Momo quote"
  end

  test "Updating a quote" do
    visit quotes_path
    assert_selector "h1", text: "Quotes"

    click_on "Edit", match: :first
    fill_in "Name", with: "Updated quote"

    # we expect to be on the page with the title "Quotes"
    assert_selector "h1", text: "Quotes"
    click_on "Update Quote"

    assert_selector "h1", text: "Quotes"
    assert_text "Updated quote"
  end

  test "Destroying a quote" do
    visit quotes_path
    assert_text @quote.name

    click_on "Delete", match: :first
    assert_no_text @quote.name
  end  
end
