# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
require 'activerecord-import'

courseFile = File.read(Rails.root.join('data','course.json'))
courseDataHashed = JSON.parse(courseFile)
courseData = []
columns= [:name, :Code, :Description]
courseDataHashed.each do |row|
courseData << Course.new(name: row['name'], Code: row['code'], Description: row['description'])
end
Course.import columns, courseData

instructorFile = File.read(Rails.root.join('data','instructor.json'))
instructorDataHashed = JSON.parse(instructorFile)
instructorData = []
columns= [:first, :last, :id]
instructorDataHashed.each do |row|
instructorData << Instructor.new(first: row['first'], last: row['last'], id: row['id'])
end
Instructor.import columns, instructorData

subjectFile = File.read(Rails.root.join('data','subject.json'))
subjectDataHashed = JSON.parse(subjectFile)
subjectData = []
columns= [:name, :ID]
subjectDataHashed.each do |row|
subjectData << Subject.new(name: row['name'], ID: row['id'])
end
Subject.import columns, subjectData

courseFile = File.read(Rails.root.join('data','course.json'))
courseDataHashed = JSON.parse(courseFile)
courseDataHashed.each do |row|
    course = Course.find_by(name: row['name'])
    row['subjects'].each do |s|
        subject = Subject.find_by(ID: s['id'])
        if course && subject
            CourseSubject.create(course_id: course.id , subject_id: subject.id)
        end
    end
end