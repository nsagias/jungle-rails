require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  it "is valid with valid attributes" do
    user = User.new(fname: "bob", lname: "uncle", email:"test@test.com", password: "password", password_confirmation:"password")
    expect(user).to be_valid
  end
end
