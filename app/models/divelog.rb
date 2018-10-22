class Divelog < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  # validates :text, :user, presence: true
end
