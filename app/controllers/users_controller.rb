class User < ApplicationController
  has_one :order
  accepts_nested_attributes_for :order, allow_destroy: true
end
