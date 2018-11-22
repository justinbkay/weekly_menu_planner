class Meal < ApplicationRecord
  belongs_to :user
  belongs_to :recipe

  validates :cal_date, :type, presence: true
end
