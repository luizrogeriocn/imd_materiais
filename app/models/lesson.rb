class Lesson < ActiveRecord::Base
  belongs_to :subject
  belongs_to :offer

  has_one :material

  has_many :lesson_users
  has_many :users, through: :lesson_users
end
