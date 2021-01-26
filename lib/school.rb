# code here!
class School
    attr_accessor :roster
    attr_reader :name

    def initialize(name)
        @name = name
        @roster = {}
    end  
   
    def add_student(student_name, grade)
        # Ruby doesn't let you
        #add new keys to the hash when iterating
        #As a solution easily duplicate hash ---> clone
       #@roster.clone.each do |grade_key, value_name|
            if @roster[grade]
                @roster[grade]<<student_name
            else
                @roster[grade]=[student_name]
            end
        #alternate solution to add_student method
        #@roster[grade] ||= []
       #@roster[grade] << student_name
        #end
       @roster
    end

    def grade(student_grade)
        @roster[student_grade]
    end

    def sort
        new_roster = {}
        @roster.sort.to_h.each do |grade_key, name_value|
           new_roster[grade_key] = name_value.sort
        end
        new_roster
    end
end
