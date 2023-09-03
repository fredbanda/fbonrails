User.create(email: "admin@example.com", password: "passenger", password_confirmation: "passenger")
User.create(email: "john@example.com", password: "password", password_confirmation: "password")
User.create(email: "nomsa@example.com", password: "fred80", password_confirmation: "fred80")
User.create(email: "johannes@example.com", password: "password", password_confirmation: "password")
User.create(email: "filis@example.com", password: "password", password_confirmation: "password")
User.update.all confirmed_at: DateTime.now