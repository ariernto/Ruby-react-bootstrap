# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

10.times do |i|
  User.create(email: "free_#{i+1}@example.com", password: "m@keTh1ng$", password_confirmation: "m@keTh1ng$")
end

10.times do |i|
  member = User.create(email: "member_#{i+1}@example.com", password: "m@keTh1ng$", password_confirmation: "m@keTh1ng$")
  member.add_role 'member'
end

6.times do |i|
  admin = User.create(email: "admin_#{i+1}@example.com", password: 'm@keTh1ng$', password_confirmation: "m@keTh1ng$")
  admin.add_role 'admin'
end

3.times do |i|
  superadmin = User.create(email: "superadmin_#{i+1}@example.com", password: 'm@keTh1ng$', password_confirmation: "m@keTh1ng$")
  superadmin.add_role 'superadmin'
end

sysadmin = User.create(email: 'sysadmin@example.com', password: 'm@keTh1ng$', password_confirmation: "m@keTh1ng$")
sysadmin.add_role 'sysadmin'

User.all.each do |u|
  2.times do |i|
    u.articles.create(title: "Article #{i+1}", text: "Seed article text.")
  end
end

# User.all.each do |u|
#   4.times do |i|
#     u.todo_items.create(title: "Seed Item #{i+1} for #{u.email}", complete: i % 2 == 0 ? true : false  )
#   end
# end
