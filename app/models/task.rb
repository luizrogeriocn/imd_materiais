class Task < ActiveRecord::Base
  has_many :chores, dependent: :destroy
  has_many :users, through: :chores

  enum status: { open: 0, done: 1 }

  has_many :comments, as: :commentable, dependent: :destroy

  accepts_nested_attributes_for :chores
  accepts_nested_attributes_for :comments
end
