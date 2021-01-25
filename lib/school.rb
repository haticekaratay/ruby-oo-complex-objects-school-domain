# code here!
class School
    attr_accessor :roster
    attr_reader :name

    def initialize(name)
        @name = name
        @roster = {}
    end  
    
    def add_student(student_name, grade)
        #@roster[grade] = []
        #@roster[grade] << student_name
        @roster.each do |grade_key,value_name|
            if grade  == grade_key
                @roster[grade] << student_name
            else
                @roster[grade] = []
                @roster[grade] << student_name
            end
        end
    end

    def grade(student_grade)
        @roster[student_grade]
    end

   
end
=begin
def grade(student_grade)
        @roster[student_grade]
    end

    def sort
        sorted_array = []
        @roster.each do |grade,student_name|
        value.sort

=end