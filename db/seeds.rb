# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Evaluation.destroy_all
Student.destroy_all
Batch.destroy_all
User.destroy_all

marloes = User.create!(email: "marloes@test.test", password: "123abc")

batch1 = Batch.create!(name: 1, start_date: 1.days.from_now, end_date: 31.days.from_now)
batch2 = Batch.create!(name: 2, start_date: 32.days.from_now, end_date: 63.days.from_now)

student1 = Student.create!(name: Faker::Name.name, photo: 'https://tinyurl.com/mzdrerm', batch: batch1)
student2 = Student.create!(name: Faker::Name.name, photo: 'https://tinyurl.com/mzdrerm', batch: batch1)
student3 = Student.create!(name: Faker::Name.name, photo: 'https://tinyurl.com/mzdrerm', batch: batch1)
student4 = Student.create!(name: Faker::Name.name, photo: 'https://tinyurl.com/mzdrerm', batch: batch1)
student5 = Student.create!(name: Faker::Name.name, photo: 'https://tinyurl.com/mzdrerm', batch: batch1)
student6 = Student.create!(name: Faker::Name.name, photo: 'https://tinyurl.com/mzdrerm', batch: batch1)
student7 = Student.create!(name: Faker::Name.name, photo: 'https://tinyurl.com/mzdrerm', batch: batch1)
student8 = Student.create!(name: Faker::Name.name, photo: 'https://tinyurl.com/mzdrerm', batch: batch2)
student9 = Student.create!(name: Faker::Name.name, photo: 'https://tinyurl.com/mzdrerm', batch: batch2)
student10 = Student.create!(name: Faker::Name.name, photo: 'https://tinyurl.com/mzdrerm', batch: batch2)
student11 = Student.create!(name: Faker::Name.name, photo: 'https://tinyurl.com/mzdrerm', batch: batch2)
student12 = Student.create!(name: Faker::Name.name, photo: 'https://tinyurl.com/mzdrerm', batch: batch2)
student13 = Student.create!(name: Faker::Name.name, photo: 'https://tinyurl.com/mzdrerm', batch: batch2)
student14 = Student.create!(name: Faker::Name.name, photo: 'https://tinyurl.com/mzdrerm', batch: batch2)
student15 = Student.create!(name: Faker::Name.name, photo: 'https://tinyurl.com/mzdrerm', batch: batch2)

color = ["green", "orange", "red"]


evaluation1 = Evaluation.create!(date: Faker::Date.between(1.days.from_now, 31.days.from_now), score: color.sample, student: student1)
evaluation2 = Evaluation.create!(date: Faker::Date.between(1.days.from_now, 31.days.from_now), score: color.sample, student: student1)
evaluation3 = Evaluation.create!(date: Faker::Date.between(1.days.from_now, 31.days.from_now), score: color.sample, student: student1)
evaluation4 = Evaluation.create!(date: Faker::Date.between(1.days.from_now, 31.days.from_now), score: color.sample, student: student2)
evaluation5 = Evaluation.create!(date: Faker::Date.between(1.days.from_now, 31.days.from_now), score: color.sample, student: student2)
evaluation6 = Evaluation.create!(date: Faker::Date.between(1.days.from_now, 31.days.from_now), score: color.sample, student: student3)
evaluation7 = Evaluation.create!(date: Faker::Date.between(1.days.from_now, 31.days.from_now), score: color.sample, student: student4)
evaluation8 = Evaluation.create!(date: Faker::Date.between(1.days.from_now, 31.days.from_now), score: color.sample, student: student4)
evaluation9 = Evaluation.create!(date: Faker::Date.between(1.days.from_now, 31.days.from_now), score: color.sample, student: student4)
evaluation10 = Evaluation.create!(date: Faker::Date.between(1.days.from_now, 31.days.from_now), score: color.sample, student: student4)
evaluation11 = Evaluation.create!(date: Faker::Date.between(1.days.from_now, 31.days.from_now), score: color.sample, student: student5)
evaluation12 = Evaluation.create!(date: Faker::Date.between(1.days.from_now, 31.days.from_now), score: color.sample, student: student7)
evaluation13 = Evaluation.create!(date: Faker::Date.between(32.days.from_now, 63.days.from_now), score: color.sample, student: student7)
evaluation14 = Evaluation.create!(date: Faker::Date.between(32.days.from_now, 63.days.from_now), score: color.sample, student: student8)
evaluation14 = Evaluation.create!(date: Faker::Date.between(32.days.from_now, 63.days.from_now), score: color.sample, student: student9)
evaluation14 = Evaluation.create!(date: Faker::Date.between(32.days.from_now, 63.days.from_now), score: color.sample, student: student10)
evaluation14 = Evaluation.create!(date: Faker::Date.between(32.days.from_now, 63.days.from_now), score: color.sample, student: student10)
evaluation14 = Evaluation.create!(date: Faker::Date.between(32.days.from_now, 63.days.from_now), score: color.sample, student: student11)
evaluation14 = Evaluation.create!(date: Faker::Date.between(32.days.from_now, 63.days.from_now), score: color.sample, student: student12)
evaluation15 = Evaluation.create!(date: Faker::Date.between(32.days.from_now, 63.days.from_now), score: color.sample, student: student13)
evaluation16 = Evaluation.create!(date: Faker::Date.between(32.days.from_now, 63.days.from_now), score: color.sample, student: student13)
evaluation17 = Evaluation.create!(date: Faker::Date.between(32.days.from_now, 63.days.from_now), score: color.sample, student: student13)
evaluation18 = Evaluation.create!(date: Faker::Date.between(32.days.from_now, 63.days.from_now), score: color.sample, student: student14)
evaluation19 = Evaluation.create!(date: Faker::Date.between(32.days.from_now, 63.days.from_now), score: color.sample, student: student15)
evaluation20 = Evaluation.create!(date: Faker::Date.between(32.days.from_now, 63.days.from_now), score: color.sample, student: student15)
evaluation21 = Evaluation.create!(date: Faker::Date.between(32.days.from_now, 63.days.from_now), score: color.sample, student: student1)
evaluation22 = Evaluation.create!(date: Faker::Date.between(32.days.from_now, 63.days.from_now), score: color.sample, student: student6)
evaluation23 = Evaluation.create!(date: Faker::Date.between(32.days.from_now, 63.days.from_now), score: color.sample, student: student6)
evaluation24 = Evaluation.create!(date: Faker::Date.between(32.days.from_now, 63.days.from_now), score: color.sample, student: student6)
evaluation25 = Evaluation.create!(date: Faker::Date.between(32.days.from_now, 63.days.from_now), score: color.sample, student: student2)
evaluation26 = Evaluation.create!(date: Faker::Date.between(32.days.from_now, 63.days.from_now), score: color.sample, student: student3)
evaluation27 = Evaluation.create!(date: Faker::Date.between(32.days.from_now, 63.days.from_now), score: color.sample, student: student1)
