user = User.create(email: 'admin@example.com', password: '12345678')
#user.add_role :admin

company_rep = User.create(email: 'company@example.com', password: '1234567', user_type: 'company')
#company_rep.add_role :Company_rep
CompanyProfile.create(user_id: company_rep.id, first_name: 'Jane', last_name: 'Smith', company_name: 'Company 1', street: '7 Kelly St', suburb: 'Ultimo', postcode: '2007', country: 'Australia', company_type: 'Small business')

student = User.create(email: 'student@example.de', password: '12345678', user_type: 'student')
StudentProfile.create(user_id: student.id, first_name: 'Anne', last_name: 'Jonas')

category = SkillCategory.create(name: 'Frontend')
category2 = SkillCategory.create(name: 'Databases')
Skill.create(skill_category_id: category.id, name: 'HTML/CSS')
Skill.create(skill_category_id: category2.id, name: 'Postgrespl')





# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
