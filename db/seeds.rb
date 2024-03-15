require 'faker'

# Seed Students
10.times do
  Student.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email
  )
end

# Seed Teachers
6.times do
  Teacher.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email
  )
end

# Seed Courses
30.times do
  teacher = Teacher.order('RANDOM()').first
  Course.create!(
    name: Faker::Educator.course_name,
    teacher: teacher
  )
end

# Seed Grades
Student.all.each do |student|
  Course.all.each do |course|
    Grade.create!(
      student: student,
      course: course,
      grade: rand(50..100) # assuming grades are out of 100
    )
  end
end
