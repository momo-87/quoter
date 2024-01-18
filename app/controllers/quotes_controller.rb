# app/controllers/quotes_controller.rb

class QuotesController < ApplicationController
  # Use a before_action filter to set the @quote instance variable before specific actions.
  before_action :set_quote, only: [:show, :edit, :update, :destroy]

  # Index action to fetch all quotes and assign them to the @quotes instance variable.
  def index
    @quotes = Quote.all
  end

  # Show action to render the show view for a specific quote.
  def show
  end

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
      redirect_to quotes_path, notice: "Quote was successfully created."
    else
      render :new
    end
  end

  # Edit action to render the edit view for a specific quote.
  def edit
  end

  # Update action to handle updating a quote based on submitted parameters.
  def update
    # If the quote is successfully updated, redirect to the index page with a notice.
    # Otherwise, re-render the edit view to display validation errors.
    if @quote.update(quote_params)
      redirect_to quotes_path, notice: "Quote was successfully updated."
    else
      render :edit
    end
  end

  # Destroy action to delete a specific quote and redirect to the index page with a notice.
  def destroy
    @quote.destroy
    redirect_to quotes_path, notice: "Quote was successfully destroyed."
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
