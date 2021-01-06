# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# card question a1 a2 a3 correct_answer points:integer category:belongs_to

science = Category.create(name: "Science")
sports = Category.create(name: "Sports")
history = Category.create(name: "History")
science.cards.create(question: "What is 1 + 1", a1: "1", a2: "3", a3: "2", correct_answer: "2", points: 100)
science.cards.create(question: "What is 2 + 1", a1: "1", a2: "3", a3: "2", correct_answer: "3", points: 100)
science.cards.create(question: "What is 3 + 1", a1: "4", a2: "3", a3: "2", correct_answer: "4", points: 100)
sports.cards.create(question: "Who won the super bowl 2020", a1: "Falcons", a2: "Cowboys", a3: "Patriots", correct_answer: "Falcons", points: 100)
sports.cards.create(question: "Who won the super bowl 2019", a1: "Patriots", a2: "Cowboys", a3: "Patriots", correct_answer: "Falcons", points: 100)
sports.cards.create(question: "Who won the super bowl 2013", a1: "Cowboys", a2: "Seahawks", a3: "Patriots", correct_answer: "Seahawks", points: 100)
history.cards.create(question: "White color is george washigton white horse", a1: "Cowboys", a2: "Seahawks", a3: "white", correct_answer: "white", points: 100)
history.cards.create(question: "White color is george washigton red horse", a1: "Cowboys", a2: "red", a3: "white", correct_answer: "red", points: 100)