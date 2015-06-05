class Task < ActiveRecord::Base
  has_many :chores
  has_many :users, through: :chores

  accepts_nested_attributes_for :chores
end
