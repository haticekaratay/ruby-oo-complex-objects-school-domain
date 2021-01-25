# code here!
class School
    attr_accessor :roster
    attr_reader :name

    def initialize(name)
        @name = name
        @roster = {}
    end  
    
    def add_student(student_name, grade)
        @roster[grade] = []  # first, key_value pair. At key_grade set an empty array to store students names
        @roster.each do |grade_key,value_name|  # loop through each key value pair on the roster hash
            if grade  == grade_key              # if grade passes as argument is already exist in the hash, push student_name to the array 
                @roster[grade] << student_name
            else                                # if no key existed at the grade level and then create a new key at that grade.
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