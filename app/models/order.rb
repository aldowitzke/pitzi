class Order < ApplicationRecord
  validates :price, :installments, presence: true
end