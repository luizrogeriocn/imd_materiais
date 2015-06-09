class Offer < ActiveRecord::Base
  def year_semester
    self.year.to_s+'.'+self.semester.to_s
  end
end
