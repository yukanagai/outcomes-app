ProgramSkill.destroy_all
CohortOfficer.destroy_all
StudentSkill.destroy_all
Skill.destroy_all
Student.destroy_all
Cohort.destroy_all
Program.destroy_all
Contact.destroy_all


bobby = Contact.create(first_name:"Bobby", last_name:"King", email:"BobbyKing@gmail.com", twitter:"@BobbyKing", github:"KingBobby", linkedin:"KingBobby",phone:"1231231233")
christopher = Contact.create(first_name:"Christopher", last_name:"Smith", email:"Chris@gmail.com", twitter:"@Chris", github:"ChristopherSmith", linkedin:"ChristopherSmith",phone:"3334445555")
ester = Contact.create(first_name:"Ester", last_name:"Zinn", email:"Ester@gmail.com", twitter:"@Ester", github:"EsterZinn", linkedin:"EsterZinn",phone:"0980980987")
jaskar = Contact.create(first_name:"Jaskar", last_name:"Singh", email:"singhjaskar@gmail.com", twitter:"@none", github:"JaskarSingh", linkedin:"Jaskar",phone:"7658908374")
josh = Contact.create(first_name:"Josh", last_name:"Bubis", email:"Josh@gmail.com", twitter:"@Josh", github:"JoshBubis", linkedin:"JoshBubis",phone:"3456542345")
joy = Contact.create(first_name:"Joy", last_name:"Morgan", email:"Joy@gmail.com", twitter:"@Joy", github:"JoyMorgan", linkedin:"JoyMorgan",phone:"5676543456")
kyle = Contact.create(first_name:"Kyle", last_name:"Lee", email:"Kyle@gmail.com", twitter:"@Kyle", github:"KyleLee", linkedin:"KyleLee",phone:"4958409384")
matt = Contact.create(first_name:"Matt", last_name:"Morriesy", email:"Matt@gmail.com", twitter:"@Matt", github:"MattM", linkedin:"MattM",phone:"8769872345")
meiji = Contact.create(first_name:"Meiji", last_name:"Chen", email:"Meji@gmail.com", twitter:"@Meiji", github:"MeijiC", linkedin:"MeijiC",phone:"45698872938")
nick = Contact.create(first_name:"Nicholas", last_name:"Marshall", email:"Nick@gmail.com", twitter:"@nick", github:"NickN", linkedin:"NickN",phone:"4598729283")
pan = Contact.create(first_name:"Pan", last_name:"W", email:"Pan@gmail.com", twitter:"@pan", github:"PanW", linkedin:"PanW",phone:"9873476592")
piere = Contact.create(first_name:"Pierre", last_name:"C", email:"Pierre@gmail.com", twitter:"@pierre", github:"PierreW", linkedin:"Pierre",phone:"4937561934")
steph = Contact.create(first_name:"Steph", last_name:"N", email:"Steph@gmail.com", twitter:"@Steph", github:"StephN", linkedin:"Steph",phone:"9843759187")
toti = Contact.create(first_name:"Toti", last_name:"F", email:"Toti@gmail.com", twitter:"@Toti", github:"TotiF", linkedin:"Toti",phone:"3948571938")
victoria = Contact.create(first_name:"Victoria", last_name:"D", email:"Victoria@gmail.com", twitter:"@Victoria", github:"VictoriaF", linkedin:"Victoria",phone:"9374759283")
yuka = Contact.create(first_name:"Yuka", last_name:"N", email:"Yuka@gmail.com", twitter:"@YukaNagai", github:"YukaF", linkedin:"Yuka",phone:"83948572837")
andrew = Contact.create(first_name:"Andrew", last_name:"C", email:"Andrew@gmail.com", twitter:"@Andrew", github:"AndrewC", linkedin:"Andrew",phone:"9284749384")


wdi = Program.create(name:"Web Development Immersive", description:"CODE => EXPLODE => KEEP GOING")
ux_di = Program.create(name:"User Experice Design Immersive", description:"DESIGN => AMAZE =>GET A JOB?")
pd = Program.create(name:"Product Management Immersive", description:"THING ABOUT PRODUCTS => MAKE SOME MONNAY")

pluto = Cohort.create(program: wdi, name:"Pluto", location:"Union Square", start_date:Date.new(2015, 8, 10), end_date:Date.new(2015, 11, 2))
bacon = Cohort.create(program: wdi, name:"Bacon", location:"Union Square", start_date:Date.new(2015, 9, 28), end_date:Date.new(2015, 12,18))
lettuce = Cohort.create(program: wdi, name:"Lettuce", location:"Union Square", start_date:Date.new(2015, 9, 28), end_date:Date.new(2015, 12,18))
tomato = Cohort.create(program: wdi, name:"Tomato", location:"Union Square", start_date:Date.new(2015, 9, 28), end_date:Date.new(2015, 12,18))
liverwurst = Cohort.create(program: ux_di, name:"Liverwurst", location:"Union Square", start_date:Date.new(2015, 9, 28), end_date:Date.new(2015, 12,18))
ryebread = Cohort.create(program: pd, name:"Ryebread", location:"Union Square", start_date:Date.new(2015, 9, 01), end_date:Date.new(2015, 9,18))

student_nick = Student.create(contact: nick, cohort:pluto, username:"nialbima", password:"password", completed:false, employed:false, employer:nil, employed_as:nil, took_survey:false)
Student.create(contact: josh, cohort:pluto, username:"JOSHBUBIS", password:"josh", completed:false, employed:false, employer:nil, employed_as:nil, took_survey:false)

CohortOfficer.create(contact: bobby, cohort: pluto, role: "Instructional Assistant")

js = Skill.create(name:"Javascript", description:"Fast, popular, front-end scripting language. Watch your tags.")
html = Skill.create(name:"HTML", description:"HYPERTEXT MARKUP LANGUAGE.")

StudentSkill.create(student: student_nick, skill: js, experience: "NOT A TON")
ProgramSkill.create(program: wdi, skill: js)

StudentSkill.create(student: student_nick, skill: html, experience: "NOT A TON")
ProgramSkill.create(program: wdi, skill: html)
