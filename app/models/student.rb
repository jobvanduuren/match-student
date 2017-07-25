class Student < ApplicationRecord

  def self.chronological
    Student.order("name ASC")
  end

  

end
