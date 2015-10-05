# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

nick = Contact.create(first_name:"Nicholas", last_name:"Marshall", email:"Test", twitter:"Test", github:"Test", linkedin:"Test",phone:"Test")
dennis = Contact.create(first_name:"Dennis", last_name:"Liaw", email:"Test", twitter:"Test", github:"Test", linkedin:"Test", phone:"Test")

wdi = Program.create(name:"Web Development Immersive", description:"CODE => EXPLODE => KEEP GOING")
pluto = Cohort.create(program: wdi, name:"Pluto", location:"Union Square", start_date:Date.new(2015, 8, 10), end_date:Date.new(2015, 11, 2))

student_nick = Student.create(contact: nick, cohort:pluto, username:"nialbima", password:"password", completed:false, employed:false, employer:nil, employed_as:nil, took_survey:false)
CohortOfficer.create(contact: dennis, cohort: pluto, role: "Instructional Assistant")

js = Skill.create(name:"Javascript", description:"Fast, popular, front-end scripting language. Watch your tags.")
html = Skill.create(name:"HTML", description:"HYPERTEXT MARKUP LANGUAGE.")

StudentSkill.create(student: student_nick, skill: js, experience: "NOT A TON")
ProgramSkill.create(program: wdi, skill: js)

StudentSkill.create(student: student_nick, skill: html, experience: "NOT A TON")
ProgramSkill.create(program: wdi, skill: html)
