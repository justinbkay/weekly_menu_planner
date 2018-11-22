class Meal < ApplicationRecord
  belongs_to :user
  belongs_to :recipe

  validates :cal_date, :type, presence: true
  validates_uniqueness_of :user_id, scope: [:cal_date, :type]
end
