class User < ApplicationRecord
  has_one :order
  validates :cpf, :email, presence: true, uniqueness: true, length: 11
  accepts_nested_attributes_for :order, allow_destroy: true
end