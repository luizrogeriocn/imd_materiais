class Lesson < ActiveRecord::Base
  belongs_to :class
  belongs_to :offer
end
