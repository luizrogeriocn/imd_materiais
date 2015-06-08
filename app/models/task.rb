class Task < ActiveRecord::Base
  has_many :chores
  has_many :users, through: :chores

  enum status: { open: 0, done: 1 }

  accepts_nested_attributes_for :chores
end
