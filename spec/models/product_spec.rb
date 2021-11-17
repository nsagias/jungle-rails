require 'rails_helper'

RSpec.describe Product, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "is valid with valid attributes" do
    category = Category.create(name: "test")
    product = Product.new(name: "bob", quantity: 1, price: 10, category: category)
    expect(product).to be_valid
  end
  it "is not valid without a name" do
    category = Category.create(name: "test")
    product = Product.new(name: nil , quantity: 1, price: 10, category: category)
    expect(product).to_not be_valid
    # product.save
    # byebug
    # byebug message
    # (byebug) product.errors.full_messages
    # ["Name can't be blank"]
    # (byebug) 
  end
  it "is not valid without a quantity" do
    category = Category.create(name: "test")
    product = Product.new(name: "bob" , quantity: nil, price: 10, category: category)
    expect(product).to_not be_valid
    # product.save
    # byebug
    # (byebug) product.errors.full_messages
    # ["Quantity can't be blank"]
  end

  it "is not valid without price " do
    category = Category.create(name: "test")
    product = Product.new(name: "bob" , quantity: 1, category: category)
    expect(product).to_not be_valid
    # product.save
    # byebug
    # (byebug) product.errors.full_messages
    # ["Price cents is not a number", "Price is not a number", "Price can't be blank"]
  end

  it "is not valid without category " do
    category = Category.create(name: "test")
    product = Product.new(name: "bob" , quantity: 1, price: 10, category: nil)
    expect(product).to_not be_valid
  end


end
