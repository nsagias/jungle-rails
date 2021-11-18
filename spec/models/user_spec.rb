require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  it "is valid with valid attributes" do
    user = User.new(fname: "bob", lname: "uncle", email:"test@test.com", password: "password", password_confirmation:"password")
    expect(user).to be_valid
  end
  it "is not valid without fname" do
    user = User.new(fname: nil, lname: "uncle", email:"test@test.com", password: "password", password_confirmation:"password")
    expect(user).to_not be_valid
  end
  
  it "is not valid without lname" do
    user = User.new(fname: "bob", lname: nil, email:"test@test.com", password: "password", password_confirmation:"password")
    expect(user).to_not be_valid
  end
  it "is not valid without email" do
    user = User.new(fname: "bob", lname: "uncle", email: nil, password: "password", password_confirmation:"password")
    expect(user).to_not be_valid
  end
  it "is not valid without password" do
    user = User.new(fname: "bob", lname: "uncle", email: "test@test.com", password: nil, password_confirmation:"password")
    expect(user).to_not be_valid
  end
  it "is not valid without password_confirmation" do
    user = User.new(fname: "bob", lname: "uncle", email: "test@test.com", password: "password", password_confirmation: nil)
    expect(user).to_not be_valid
  end
  it "is not valid if password and password confirmation do not match" do
    user = User.new(fname: "bob", lname: "uncle", email: "test@test.com", password: "password", password_confirmation: "1134")
    expect(user).to_not be_valid
  end
  it "is not valid if email is already in database" do
    User.create(fname: "bob", lname: "uncle", email:"test@test.COM", password: "password", password_confirmation:"password")
    user = User.new(fname: "bob", lname: "uncle", email: "TEST@TEST.com", password: "password", password_confirmation: "1134")
    expect(user).to_not be_valid
  end
  
end
