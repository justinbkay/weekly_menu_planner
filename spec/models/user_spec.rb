require 'rails_helper'

RSpec.describe User, type: :model do
  it 'requires and email to be valid' do
    user = User.new
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end

  it 'requires a valid email address' do
    user = User.new(email: 'someone@example.com')
    expect(user.errors[:email]).to eq([])
  end

  it 'requires a first name' do
    user = User.new
    user.valid?
    expect(user.errors[:first_name]).to include("can't be blank")
  end

  it 'requires a last name' do
    user = User.new
    user.valid?
    expect(user.errors[:last_name]).to include("can't be blank")
  end
end
