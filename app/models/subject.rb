class Subject < ActiveRecord::Base
  has_many :lessons
  has_many :materials, through: :lessons
end
