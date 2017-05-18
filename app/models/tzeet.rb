class Tzeet < ApplicationRecord
  belongs_to :user

  validates :user, :presence => true
  validates :text, :presence => true


  scope :recent, -> {order(created_at: :desc).limit(20)}
end
