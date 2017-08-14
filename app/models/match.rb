class Match < ApplicationRecord


  def self.remove_matches

    existing_matches = Match.all

      existing_matches.each do |match|
        match.destroy
      end

  end

 def self.create_matches

   original_table = Student.all

   if original_table.length%2 != 0
    student_dummy = Student.create!( { name: "Dummy"} )
    original_table = Student.all
   end

   shuffled_table = []
   shuffled_table[0] = original_table.shuffle

   number_of_students = original_table.length

   for i in (1..number_of_students-2) do
    shuffled_table[i] = shuffled_table[i-1][0..number_of_students-2].rotate + [shuffled_table[i-1][number_of_students-1]]
   end

   counter = 0

   shuffled_table.each_with_index do |array, index|

   counter += 1

     for a in (1..(number_of_students/2))
      Match.create(student1: array[a-1].name, student2: array[number_of_students-a].name, day: counter)
     end

   end
  end
  
end
