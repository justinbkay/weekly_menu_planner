require 'rails_helper'

RSpec.describe Meal, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:recipe) }

  it { should validate_presence_of :cal_date }
  it { should validate_presence_of :type }
end
