class Order < ApplicationRecord
  belongs_to :user
  validates :price, :imei, :device, presence: true
end