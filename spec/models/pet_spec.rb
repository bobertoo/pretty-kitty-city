require 'rails_helper'

describe Pet do

  let(:user) {User.create(name: "Josh", password: "123")}
  let(:valid_pet) {Pet.new(name: "Sharky the shark dog", owner_id: user.id)}
  let(:invalid_pet) {Pet.new(owner_id: user.id)}
  
  it "is valid with a name" do
    expect(valid_pet).to be_valid
  end

  it "is invalid without a name" do
    invalid_pet.valid?
    expect(invalid_pet.errors[:name]).to include("can't be blank")
  end
end
