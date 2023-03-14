class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades 
        students_grades = Student.order(grade: :desc)
        render json: students_grades
    end

     def highest_grade
        top_student = Student.order(grade: :desc).first
        render json: top_student
	end
end
