require 'rails_helper'

describe Product do
  it { should have_many(:reviews)
    product = Product.create(name: "product")
    review1 = Review.create(name: "review1", product_id: product.id)
    review2 = Review.create(name: "review2", product_id: product.id)
    expect(product.reviews()).to(eq([review1, review2]))}
  end
