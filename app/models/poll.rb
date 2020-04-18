class Poll < ApplicationRecord
  has_one :options
  accepts_nested_attributes_for :options, :allow_destroy => true

  validates :poll_description, presence: true
end
