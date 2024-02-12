
class Quote < ApplicationRecord
  validates :name, presence: true

  # Add ordered scope
  scope :ordered, -> { order(id: :desc) }

  # Broadcasting created quotes with Turbo Streams
  broadcasts_to ->(quote) { "quotes" }, inserts_by: :prepend
end
