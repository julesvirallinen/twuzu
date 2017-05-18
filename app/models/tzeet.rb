class Tzeet < ApplicationRecord
  belongs_to :user

  scope :recent, -> {order(created_at: :desc).limit(5)}
end
