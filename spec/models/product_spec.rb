require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "valid product" do
    product = Product.new
    it { expect(product).to be_valid }
  end
  
  describe "invalid product"
  product = Product.new
  product.title = "some"
  it { expect(product).to be_invalid }
end
