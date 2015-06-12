User.create(email: "coordinator@example.com", password: "rootadmin", nickname: "coordinator")
User.create(email: "teacher1@example.com", password: "rootadmin", nickname: "teacher1")
User.create(email: "teacher2@example.com", password: "rootadmin", nickname: "teacher2")
User.create(email: "teacher3@example.com", password: "rootadmin", nickname: "teacher3")
User.create(email: "reviewer1@example.com", password: "rootadmin", nickname: "reviewer1")
User.create(email: "reviewer2@example.com", password: "rootadmin", nickname: "reviewer2")


Role.create(title: "Coordinator")
Role.create(title: "Teacher")
Role.create(title: "Reviewer")

Assignment.create(user_id: 1, role_id: 1)
Assignment.create(user_id: 2, role_id: 2)
Assignment.create(user_id: 3, role_id: 2)
Assignment.create(user_id: 4, role_id: 2)
Assignment.create(user_id: 5, role_id: 3)
Assignment.create(user_id: 6, role_id: 3)


Subject.create(title: "Banco de Dados")
Subject.create(title: "Logica")
Subject.create(title: "Web")

Offer.create(year: 2015, semester: 1)
Offer.create(year: 2015, semester: 2)

Lesson.create(lesson_number: 1, subject_id: 1, offer_id: 1, description: "Aula 1 de Banco de Dados")
LessonUser.create(lesson_id: 1, user_id: 2)
LessonUser.create(lesson_id: 1, user_id: 3)
Material.create(lesson_id: 1, status: 1, description: "Material da aula 1 de BD")
Task.create(tilte: "Enviar Material da aula 1 de BD", description: "Task terminada para prof 1", status: 1)
Comment.create(content: "Envia esse material ai, teacher1!", user_id: 1, commentable_id: 1, commentable_type: "Task")
Comment.create(content: "Os alunos de BD querem estudar, teacher1!!!", user_id: 1, commentable_id: 1, commentable_type: "Task")
Comment.create(content: "Vou enviar. Calma, esse boy são todos godeleiros :)", user_id: 2, commentable_id: 1, commentable_type: "Task")
Task.create(tilte: "Revisar Material da aula 1 de BD", description: "Task para revisor 1", status: 1)
Comment.create(content: "Vê se corrige ligeiro, reviewer1!!!", user_id: 1, commentable_id: 2, commentable_type: "Task")
Comment.create(content: "Corrigi e sai correndo, me dá MMs ai quem tá lendo :D", user_id: 5, commentable_id: 2, commentable_type: "Task")
Comment.create(content: "valeuu, reviewer1!", user_id: 1, commentable_id: 2, commentable_type: "Task")
Task.create(tilte: "Corrigir Material da aula 1 de BD", description: "Task terminada para prof 1 e 2", status: 1)
Chore.create(user_id: 2, task_id: 1)
Chore.create(user_id: 5, task_id: 2)
Chore.create(user_id: 2, task_id: 3)
Chore.create(user_id: 3, task_id: 3)


Lesson.create(lesson_number: 2, subject_id: 1, offer_id: 1, description: "Aula 2 de Banco de Dados")
LessonUser.create(lesson_id: 2, user_id: 2)
LessonUser.create(lesson_id: 2, user_id: 3)
Material.create(lesson_id: 2, status: 1, description: "Material da aula 2 de BD")
Task.create(tilte: "Enviar Material da aula 2 de BD", description: "Task terminada para prof 1", status: 1)
Task.create(tilte: "Revisar Material da aula 2 de BD", description: "Task para revisor 1", status: 1)
Task.create(tilte: "Corrigir Material da aula 2 de BD", description: "Task para prof 1 e 2", status: 1)
Chore.create(user_id: 2, task_id: 4)
Chore.create(user_id: 5, task_id: 5)
Chore.create(user_id: 2, task_id: 6)
Chore.create(user_id: 3, task_id: 6)


Lesson.create(lesson_number: 3, subject_id: 1, offer_id: 1, description: "Aula 3 de Banco de Dados")
LessonUser.create(lesson_id: 3, user_id: 2)
Task.create(tilte: "Enviar Material da aula 3 de BD", description: "Task para prof 1", status: 0)
Task.create(tilte: "Revisar Material da aula 3 de BD", description: "Task para revisor 1", status: 0)
Chore.create(user_id: 2, task_id: 7)
Chore.create(user_id: 5, task_id: 8)


Lesson.create(lesson_number: 4, subject_id: 2, offer_id: 1, description: "Aula 1 de Lógica")
LessonUser.create(lesson_id: 4, user_id: 2)
Material.create(lesson_id: 4, status: 0, description: "Material da aula 1 de Lógica")
Task.create(tilte: "Enviar Material da aula 1 de Lógica", description: "Task para prof 1", status: 1)
Task.create(tilte: "Revisar Material da aula 1 de Lógica", description: "Task para revisor 2", status: 1)
Task.create(tilte: "Corrigir Material da aula 1 de Lógica", description: "Task para prof 1", status: 0)
Chore.create(user_id: 2, task_id: 9)
Chore.create(user_id: 6, task_id: 10)
Chore.create(user_id: 2, task_id: 11)

Lesson.create(lesson_number: 5, subject_id: 2, offer_id: 1, description: "Aula 2 de Lógica")
LessonUser.create(lesson_id: 5, user_id: 2)
Task.create(tilte: "Enviar Material da aula 2 de Lógica", description: "Task para prof 1", status: 0)
Task.create(tilte: "Revisar Material da aula 2 de Lógica", description: "Task para revisor 2", status: 0)
Chore.create(user_id: 2, task_id: 12)
Chore.create(user_id: 6, task_id: 13)

Lesson.create(lesson_number: 6, subject_id: 3, offer_id: 1, description: "Aula 1 de Web")
LessonUser.create(lesson_id: 6, user_id: 4)
Material.create(lesson_id: 6, status: 1, description: "Material da aula 1 de Web")
Task.create(tilte: "Enviar Material da aula 1 de Web", description: "Task para prof 3", status: 1)
Task.create(tilte: "Revisar Material da aula 1 de Web", description: "Task para revisor 1 e 2", status: 1)
Task.create(tilte: "Corrigir Material da aula 1 de Web", description: "Task para prof 3", status: 1)
Chore.create(user_id: 4, task_id: 14)
Chore.create(user_id: 5, task_id: 15)
Chore.create(user_id: 6, task_id: 15)
Chore.create(user_id: 4, task_id: 16)

Lesson.create(lesson_number: 7, subject_id: 3, offer_id: 1, description: "Aula 2 de Web")
LessonUser.create(lesson_id: 7, user_id: 4)
Material.create(lesson_id: 7, status: 0, description: "Material da aula 2 de Web")
Task.create(tilte: "Enviar Material da aula 2 de Web", description: "Task para prof 3", status: 1)
Task.create(tilte: "Revisar Material da aula 2 de Web", description: "Task para revisor 1 e 2", status: 1)
Task.create(tilte: "Corrigir Material da aula 2 de Web", description: "Task para prof 3", status: 0)
Chore.create(user_id: 4, task_id: 17)
Chore.create(user_id: 5, task_id: 18)
Chore.create(user_id: 6, task_id: 18)
Chore.create(user_id: 4, task_id: 19)

Lesson.create(lesson_number: 8, subject_id: 3, offer_id: 1, description: "Aula 3 de Web")
LessonUser.create(lesson_id: 8, user_id: 4)
Task.create(tilte: "Enviar Material da aula 3 de Web", description: "Task para prof 3", status: 0)
Task.create(tilte: "Revisar Material da aula 3 de Web", description: "Task para revisor 1 e 2", status: 0)
Chore.create(user_id: 4, task_id: 20)
Chore.create(user_id: 5, task_id: 21)
Chore.create(user_id: 6, task_id: 21)

#Comment(id: integer, content: string, commentable_id: integer, commentable_type: string, user_id: integer
#Comment.create(content: "", user_id: 1, commentable_id: 1, commentable_type: "")