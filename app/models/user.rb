class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :chores
  has_many :assignments
  has_many :lesson_users
  has_many :tasks, through: :chores
  has_many :roles, through: :assignments
  has_many :lessons, through: :lesson_users

  accepts_nested_attributes_for :assignments
end
