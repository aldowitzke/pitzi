class Order < ApplicationRecord
  belongs_to :user
  validates :price, :installments, presence: true
end