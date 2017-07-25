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


end
