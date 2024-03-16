class Quote < ApplicationRecord
    validates :name, presence: true

    # keep quotes always ordered by newest first
    scope :ordered, -> { order(id: :desc) }
end
