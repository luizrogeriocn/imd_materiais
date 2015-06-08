User.create(email: "coordinator@example.com", password: "rootadmin", nickname: "coordinator")
User.create(email: "teacher1@example.com", password: "rootadmin", nickname: "teacher1")
User.create(email: "teacher2@example.com", password: "rootadmin", nickname: "teacher2")

Task.create(tilte: "Task1", description: "Task para prof 1", created_at: datetime, updated_at: datetime, status: 0)
Task.create(tilte: "Task2", description: "Task para prof 2", created_at: datetime, updated_at: datetime, status: 0)
Task.create(tilte: "Task3", description: "Task para prof 1 e 2", created_at: datetime, updated_at: datetime, status: 0)

Chore.create(user_id: 1, task_id: 1, created_at: datetime, updated_at: datetime)
Chore.create(user_id: 2, task_id: 2, created_at: datetime, updated_at: datetime)
Chore.create(user_id: 1, task_id: 3, created_at: datetime, updated_at: datetime)
Chore.create(user_id: 2, task_id: 3, created_at: datetime, updated_at: datetime)

Role.create(title: "Coordinator", created_at: datetime, updated_at: datetime)
Role.create(title: "Teacher", created_at: datetime, updated_at: datetime)

Assignment.create(user_id: 1, role_id: 1, created_at: datetime, updated_at: datetime)
Assignment.create(user_id: 2, role_id: 2, created_at: datetime, updated_at: datetime)
Assignment.create(user_id: 3, role_id: 2, created_at: datetime, updated_at: datetime)