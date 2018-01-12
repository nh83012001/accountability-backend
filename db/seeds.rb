# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create(username: "Carlos")
task = Task.create(name: "Learn Github", description: "This is me... Learning Github. Fool.")
userTask = Usertask.create(user_id: user.id, task_id: task.id)

Like.create(task_id: task.id, count: 5)
Comment.create(task_id: task.id, description: "Hey guuuuurl heeeeeeeeey")
