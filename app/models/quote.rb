class Quote < ApplicationRecord
  validates :name, presence: true

  # Add ordered scope
  scope :ordered, -> { order(id: :desc) }

  # Broadcasting created quotes with Turbo Streams
  after_create_commit -> { broadcast_prepend_to "quotes", partial: "quotes/quote", locals: { quote: self }, target: "quotes" }
end
