# frozen_string_literal: true

# app/controllers/quotes_controller.rb

class QuotesController < ApplicationController
  # Use a before_action filter to set the @quote instance variable before specific actions.
  before_action :set_quote, only: %i[show edit update destroy]

  # Index action to fetch all quotes ordered by id:desc (see scope in the Quote model) and assign them to the @quotes instance variable.
  def index
    @quotes = current_company.quotes.ordered
  end

  # Show action to render the show view for a specific quote.
  def show; end

  # New action to initialize a new quote and assign it to the @quote instance variable.
  def new
    @quote = Quote.new
  end

  # Create action to handle the creation of a new quote based on submitted parameters.
  def create
    @quote = Quote.new(quote_params)

    # If the quote is successfully saved, redirect to the index page with a notice.
    # Otherwise, re-render the new view to display validation errors.
    if @quote.save
      respond_to do |format|
        format.html { redirect_to quotes_path, notice: 'Quote was successfully created.' }
        format.turbo_stream
      end
    else
      render :new, status: :unprocessable_entity
    end
  end

  # Edit action to render the edit view for a specific quote.
  def edit; end

  # Update action to handle updating a quote based on submitted parameters.
  def update
    # If the quote is successfully updated, redirect to the index page with a notice.
    # Otherwise, re-render the edit view to display validation errors.
    if @quote.update(quote_params)
      redirect_to quotes_path, notice: 'Quote was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # Destroy action to delete a specific quote and redirect to the index page with a notice.
  def destroy
    @quote.destroy

    respond_to do |format|
      format.html { redirect_to quotes_path, notice: 'Quote was successfully destroyed.' }
      format.turbo_stream
    end
  end

  private

  # Private method to find and set the @quote instance variable based on the :id parameter.
  def set_quote
    @quote = Quote.find(params[:id])
  end

  # Private method to permit and retrieve specific parameters for quote creation and updating.
  def quote_params
    params.require(:quote).permit(:name)
  end
end
