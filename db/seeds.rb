# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 User.create(name: 'admin', email: 'admin@gmail.com', password: 'admin123', role: 'admin')
 student = User.create(name: 'student', email: 'student@gmail.com', password: 'student123', role: 'student')
 teacher = User.create(name: 'teacher', email: 'teacher@gmail.com', password: 'teacher123', role: 'teacher')
 classroom = Classroom.create(grade: 'class1')


 subject = Subject.create(name: 'English', classroom_id: classroom.id)
 Question.create(title: 'test question', user_id: student.id, subject_id: subject.id )
 UserSubject.create(user_id: teacher.id, subject_id: subject.id)
 