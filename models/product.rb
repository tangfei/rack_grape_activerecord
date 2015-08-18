require 'active_record'

class Product < ActiveRecord::Base
  #belongs_to :commodity

  validates :sku, presence: true, uniqueness: true, length: { minimum: 1, maximum: 254 }
  validates :name, presence: true, uniqueness: true, length: { minimum: 1, maximum: 254 }
  validates :description, presence: true, length: { maximum: 65534 }
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0.01 }
  validates :no, presence: true, uniqueness: true, numericality: { only_integer: true }
end