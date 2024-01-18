class Quote < ApplicationRecord
  validate name, presence: true
end
