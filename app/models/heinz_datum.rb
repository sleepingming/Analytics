class HeinzDatum < ApplicationRecord
  validates :count, :date, presence: true
end
