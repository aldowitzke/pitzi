class User < ApplicationRecord
  has_one :order
  validates :cpf, presence: true, uniqueness: true, length: { minimum:11, maximum:11 }
  validates :email, presence: true, uniqueness: true
  accepts_nested_attributes_for :order, allow_destroy: true
end