require 'pry'

class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(stu_name, stu_grade)
        # roster[stu_grade] = []
        # roster[stu_grade] << stu_name

        if roster.has_key?(stu_grade)
            roster[stu_grade] << stu_name
        else
            roster[stu_grade] = []
            roster[stu_grade] << stu_name
        end
    end

    def grade(grade)
        roster[grade]
    end

    def sort        
        roster.each do |num, arr|
            roster[num] = arr.sort
        end
    end

    # flatiron = School.new("Flatiron")
    # flatiron.add_student("Jenny", 10)
    # flatiron.add_student("Jane", 10)
    # flatiron.add_student("Bill", 10)
    # flatiron.add_student("Andrew", 11)
    # flatiron.add_student("John", 12)
    # flatiron.add_student("Aaron", 12)

    # binding.pry
end