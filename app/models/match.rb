class Match < ApplicationRecord


  def self.remove_matches

    existing_matches = Match.all


      existing_matches.each do |match|
        match.destroy
      end

  end



  def self.create_matches

    @used_pair = []
    @used_students = []

    students = Student.all

    for i in (1..7)

      random_nr1 = 0
     random_nr2 = 0

     while random_nr1 == random_nr2
       random_nr1 = rand(8)
       random_nr2 = rand(8)
     end

     first_one = students[random_nr1]
     second_one = students[random_nr2]

     Match.create(student1: first_one.name, student2: second_one.name)
   end
 end

 def self.create_matches2
   original_table = Student.all
   shuffled_table = []
   shuffled_table[0] = original_table.shuffle

   number_of_students = original_table.length

  for i in (1..7) do
    shuffled_table[i] = shuffled_table[i-1][0..number_of_students-2].rotate + [shuffled_table[i-1][number_of_students-1]]
  end

  shuffled_table.each_with_index do |array, index|

    Match.create(student1: array[0].name, student2: array[7].name)
    Match.create(student1: array[1].name, student2: array[6].name)
    Match.create(student1: array[2].name, student2: array[5].name)
    Match.create(student1: array[3].name, student2: array[4].name)

  end

  end


end
