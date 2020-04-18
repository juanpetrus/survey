class Option < ApplicationRecord
  belongs_to :poll, optional: true

  validates :option_description, presence: true
end
