class Student < ApplicationRecord

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :name, length: { maximum: 15 }

  def self.chronological
    Student.order("name ASC")
  end

  def self.remove_dummy
    existing_students = Student.all

    existing_students.each do |student|
      if student.name == "Dummy"
        student.destroy
      end
    end
  end

end
