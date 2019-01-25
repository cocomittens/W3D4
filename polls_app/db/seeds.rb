# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do
    sam = User.create({username: 'Sam'})
    louis = User.create({username: 'Louis'})
    corrie = User.create({username: 'Corrie'})
    david = User.create({username: 'David'})
    vishal = User.create({username: 'Vishal'})

    poll = Poll.create({author_id: sam.id, title: "Rails poll"})

    question = Question.create({poll_id: poll.id, text: "how fun is rails?"})

    choice1 = AnswerChoice.create({question_id: question.id, text: "sooooo fun"})
    choice2 = AnswerChoice.create({question_id: question.id, text: "kinda fun"})
    choice3 = AnswerChoice.create({question_id: question.id, text: "the 9th straight hour sucks"})

    response = Response.create({user_id: louis.id, choice_id: choice1.id})
end