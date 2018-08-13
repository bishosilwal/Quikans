# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

classroom = Classroom.create(grade: 'class1')
 User.create(name: 'admin', email: 'admin@gmail.com', password: 'admin123', role: 'admin')
 student = User.create(name: 'student', email: 'student@gmail.com', password: 'student123', role: 'student', classroom_id: classroom.id)
 teacher = User.create(name: 'teacher', email: 'teacher@gmail.com', password: 'teacher123', role: 'teacher', classroom_id: classroom.id)
 


 subject1 = Subject.create(name: 'English', classroom_id: classroom.id)
 subject2 = Subject.create(name: 'Nepali', classroom_id: classroom.id)
 subject3 = Subject.create(name: 'Social', classroom_id: classroom.id)
 
 Question.create(title: 'test question1', user_id: student.id, subject_id: subject1.id )
 Question.create(title: 'test question2', user_id: student.id, subject_id: subject2.id )
 Question.create(title: 'test question3', user_id: student.id, subject_id: subject3.id )
 Question.create(title: 'test question4', user_id: student.id, subject_id: subject1.id )
 UserSubject.create(user_id: teacher.id, subject_id: subject1.id)
 