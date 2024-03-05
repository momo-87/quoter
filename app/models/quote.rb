# frozen_string_literal: true

class Quote < ApplicationRecord
  has_many :line_item_dates, dependent: :destroy
  
  belongs_to :company
  
  validates :name, presence: true

  # Add ordered scope
  scope :ordered, -> { order(id: :desc) }

  # Broadcasting creations, updates, and deletions to users with turbo stream
  broadcasts_to ->(quote) { [quote.company, "quotes"] }, inserts_by: :prepend
end
