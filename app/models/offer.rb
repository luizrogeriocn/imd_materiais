class Offer < ActiveRecord::Base
  has_many :lessons
  has_many :materials, through: :lessons
  def year_semester
    self.year.to_s+'.'+self.semester.to_s
  end
end
