class Lesson < ActiveRecord::Base
  belongs_to :subject
  belongs_to :offer

  has_one :material

  has_many :lesson_users, dependent: :destroy
  has_many :users, through: :lesson_users

  accepts_nested_attributes_for :lesson_users
end
