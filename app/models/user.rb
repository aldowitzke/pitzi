class User < ApplicationRecord
  validates :cpf, :email, presence: true, uniqueness: true, length: 11
end