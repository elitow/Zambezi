class Product < ActiveRecord::Base
  validates :description, :name, presence: true
  validates :price, numericality: {greater_than: 0}
  has_many :reviews

  def formatted_price
    format("%.2f", price)
  end
end
