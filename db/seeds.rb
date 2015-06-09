User.create(email: "coordinator@example.com", password: "rootadmin", nickname: "coordinator")
User.create(email: "teacher1@example.com", password: "rootadmin", nickname: "teacher1")
User.create(email: "teacher2@example.com", password: "rootadmin", nickname: "teacher2")

Task.create(tilte: "Task1", description: "Task para prof 1", status: 0)
Task.create(tilte: "Task2", description: "Task para prof 2", status: 0)
Task.create(tilte: "Task3", description: "Task para prof 1 e 2", status: 0)

Chore.create(user_id: 2, task_id: 1)
Chore.create(user_id: 3, task_id: 2)
Chore.create(user_id: 2, task_id: 3)
Chore.create(user_id: 3, task_id: 3)

Role.create(title: "Coordinator")
Role.create(title: "Teacher")

Assignment.create(user_id: 1, role_id: 1)
Assignment.create(user_id: 2, role_id: 2)
Assignment.create(user_id: 3, role_id: 2)

Subject.create(title: "Banco de Dados")
Subject.create(title: "Logica")
Subject.create(title: "Redacao")

Offer.create(year: 2015, semester: 1)
Offer.create(year: 2015, semester: 2)

Lesson.create(lesson_number: 1, subject_id: 1, offer_id: 1, description: "Aula 1 de Banco de Dados")
Lesson.create(lesson_number: 1, subject_id: 2, offer_id: 2, description: "Aula 1 de Logica")
Lesson.create(lesson_number: 1, subject_id: 3, offer_id: 1, description: "Aula 1 de Redacao")