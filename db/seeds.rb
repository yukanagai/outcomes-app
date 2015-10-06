ProgramSkill.destroy_all
CohortOfficer.destroy_all
StudentSkill.destroy_all
Skill.destroy_all
Student.destroy_all
Cohort.destroy_all
Program.destroy_all
Contact.destroy_all


bobby = Contact.create(first_name:"Bobby", last_name:"King", email:"BobbyKing@gmail.com", twitter:"@BobbyKing", github:"KingBobby", linkedin:"KingBobby",phone:"1231231233")
calvin = Contact.create(first_name:"Calvin", last_name:"Yeung", email:"CalvinYeung@gmail.com", twitter:"@CalvinYeung", github:"CalvinYeung", linkedin:"CalvinYeung",phone:"1231237777")
christopher = Contact.create(first_name:"Christopher", last_name:"Smith", email:"Chris@gmail.com", twitter:"@Chris", github:"ChristopherSmith", linkedin:"ChristopherSmith",phone:"3334445555")
dennis = Contact.create(first_name:"Dennis", last_name:"Liaw", email:"dennis.liaw@generalassemb.ly", twitter:"@DennisLiaw", github:"dennisliaw", linkedin:"dennisliaw",phone:"1888231233")
eric = Contact.create(first_name:"Eric", last_name:"Kim", email:"EricKim@gmail.com", twitter:"@EricKim", github:"EricKim", linkedin:"EricKim",phone:"0980984444")
ester = Contact.create(first_name:"Ester", last_name:"Zinn", email:"Ester@gmail.com", twitter:"@Ester", github:"EsterZinn", linkedin:"EsterZinn",phone:"0980980987")
harrison = Contact.create(first_name:"Harrison", last_name:"Riddell", email:"HarrisonRiddell@gmail.com", twitter:"@HarrisonIsVoldemort", github:"HarrisonIsVoldemort", linkedin:"HarrisonIsVoldemort",phone:"6666666666")
jacob = Contact.create(first_name:"Jacob", last_name:"Shemkovitz", email:"JacobShemkovitz@gmail.com", twitter:"@JShem", github:"JShem", linkedin:"JShem",phone:"3456546645")
jaden = Contact.create(first_name:"Jaden", last_name:"Jadenslastname", email:"jadensemail@gmail.com", twitter:"@jaden", github:"JadenGit", linkedin:"Jaden",phone:"5553336666")
jenn = Contact.create(first_name:"Jenn", last_name:"Yien", email:"JennYien@gmail.com", twitter:"@JennYien", github:"JennYien", linkedin:"JennYien",phone:"3456599345")
josh = Contact.create(first_name:"Josh", last_name:"Bubis", email:"Josh@gmail.com", twitter:"@Josh", github:"JoshBubis", linkedin:"JoshBubis",phone:"3456542345")
jaskar = Contact.create(first_name:"Jaskar", last_name:"Singh", email:"singhjaskar@gmail.com", twitter:"@none", github:"JaskarSingh", linkedin:"Jaskar",phone:"7658908374")
joy = Contact.create(first_name:"Joy", last_name:"Morgan", email:"Joy@gmail.com", twitter:"@Joy", github:"JoyMorgan", linkedin:"JoyMorgan",phone:"5676543456")
kyle = Contact.create(first_name:"Kyle", last_name:"Lee", email:"Kyle@gmail.com", twitter:"@Kyle", github:"KyleLee", linkedin:"KyleLee",phone:"4958409384")
matt = Contact.create(first_name:"Matt", last_name:"Morriesy", email:"Matt@gmail.com", twitter:"@Matt", github:"MattM", linkedin:"MattM",phone:"8769872345")
meiji = Contact.create(first_name:"Meiji", last_name:"Chen", email:"Meji@gmail.com", twitter:"@Meiji", github:"MeijiC", linkedin:"MeijiC",phone:"45698872938")
mohamed = Contact.create(first_name:"Mohamed", last_name:"Elgendy", email:"MohamedElgendy@gmail.com", twitter:"@MohamedElgendy", github:"MohamedElgendy", linkedin:"MohamedElgendy",phone:"4888729283")
nick = Contact.create(first_name:"Nicholas", last_name:"Marshall", email:"Nick@gmail.com", twitter:"@nick", github:"NickN", linkedin:"NickN",phone:"4598729283")
pan = Contact.create(first_name:"Pan", last_name:"W", email:"Pan@gmail.com", twitter:"@pan", github:"PanW", linkedin:"PanW",phone:"9873476592")
pam = Contact.create(first_name:"Pamela", last_name:"Nevins", email:"PamNev@gmail.com", twitter:"@pamnev", github:"pamnev", linkedin:"pamnev",phone:"5343336666")
piere = Contact.create(first_name:"Pierre", last_name:"C", email:"Pierre@gmail.com", twitter:"@pierre", github:"PierreW", linkedin:"Pierre",phone:"4937561934")
steph = Contact.create(first_name:"Steph", last_name:"N", email:"Steph@gmail.com", twitter:"@Steph", github:"StephN", linkedin:"Steph",phone:"9843759187")
toti = Contact.create(first_name:"Toti", last_name:"F", email:"Toti@gmail.com", twitter:"@Toti", github:"TotiF", linkedin:"Toti",phone:"3948571938")
victoria = Contact.create(first_name:"Victoria", last_name:"D", email:"Victoria@gmail.com", twitter:"@Victoria", github:"VictoriaF", linkedin:"Victoria",phone:"9374759283")
yuka = Contact.create(first_name:"Yuka", last_name:"N", email:"Yuka@gmail.com", twitter:"@YukaNagai", github:"YukaF", linkedin:"Yuka",phone:"83948572837")
zoe = Contact.create(first_name:"Zoe", last_name:"Sachs", email:"zoesachs@gmail.com", twitter:"@Zoesachs", github:"Zoesachs", linkedin:"Zoesachs",phone:"7677708374")

wdi = Program.create(name:"Web Development Immersive", description:"CODE => EXPLODE => KEEP GOING")
ux_ui = Program.create(name:"User Experice Design Immersive", description:"DESIGN => AMAZE =>GET A JOB?")
pd = Program.create(name:"Product Management Immersive", description:"THING ABOUT PRODUCTS => MAKE SOME MONNAY")

pluto = Cohort.create(program: wdi, name:"Pluto", location:"Union Square", start_date:Date.new(2015, 8, 10), end_date:Date.new(2015, 11, 2))
bacon = Cohort.create(program: wdi, name:"Bacon", location:"Union Square", start_date:Date.new(2015, 9, 28), end_date:Date.new(2015, 12,18))
lettuce = Cohort.create(program: wdi, name:"Lettuce", location:"Union Square", start_date:Date.new(2015, 9, 28), end_date:Date.new(2015, 12,18))
tomato = Cohort.create(program: wdi, name:"Tomato", location:"Union Square", start_date:Date.new(2015, 9, 28), end_date:Date.new(2015, 12,18))
liverwurst = Cohort.create(program: ux_ui, name:"Liverwurst", location:"Union Square", start_date:Date.new(2015, 9, 28), end_date:Date.new(2015, 12,18))
ryebread = Cohort.create(program: pd, name:"Ryebread", location:"Union Square", start_date:Date.new(2015, 9, 01), end_date:Date.new(2015, 9,18))



student_nick = Student.create(contact: nick, cohort:pluto, username:"nick", password:"password", completed:false, employed:false, employer:nil, employed_as:nil, took_survey:false)
Student.create(contact: josh, cohort:pluto, username:"josh", password:"password", completed:false, employed:false, employer:"GOOGLE! That's right. Josh got a job at fuckin GOOGLE. Fuck yall", employed_as:nil, took_survey:false)
Student.create(contact: andrew, cohort:pluto, username:"andrew", password:"password", completed:false, employed:false, employer:nil, employed_as:nil, took_survey:false)
Student.create(contact: calvin, cohort:pluto, username:"calvin", password:"password", completed:false, employed:false, employer:nil, employed_as:nil, took_survey:false)
Student.create(contact: christopher, cohort:pluto, username:"christopher", password:"password", completed:false, employed:false, employer:nil, employed_as:nil, took_survey:false)
Student.create(contact: eric, cohort:pluto, username:"eric", password:"password", completed:false, employed:false, employer:nil, employed_as:nil, took_survey:false)
Student.create(contact: ester, cohort:pluto, username:"ester", password:"password", completed:false, employed:false, employer:nil, employed_as:nil, took_survey:false)
Student.create(contact: harrison, cohort:pluto, username:"harrison", password:"password", completed:false, employed:false, employer:nil, employed_as:nil, took_survey:false)
Student.create(contact: jacob, cohort:pluto, username:"jacob", password:"password", completed:false, employed:false, employer:nil, employed_as:nil, took_survey:false)
Student.create(contact: jenn, cohort:pluto, username:"jenn", password:"password", completed:false, employed:false, employer:nil, employed_as:nil, took_survey:false)
Student.create(contact: jaskar, cohort:pluto, username:"jaskar", password:"password", completed:false, employed:false, employer:nil, employed_as:nil, took_survey:false)
Student.create(contact: joy, cohort:pluto, username:"joy", password:"password", completed:false, employed:false, employer:nil, employed_as:nil, took_survey:false)
Student.create(contact: matt, cohort:pluto, username:"matt", password:"password", completed:false, employed:false, employer:nil, employed_as:nil, took_survey:false)
Student.create(contact: meiji, cohort:pluto, username:"meiji", password:"password", completed:false, employed:false, employer:nil, employed_as:nil, took_survey:false)
Student.create(contact: mohamed, cohort:pluto, username:"mohamed", password:"password", completed:false, employed:false, employer:nil, employed_as:nil, took_survey:false)
Student.create(contact: pam, cohort:pluto, username:"pam", password:"password", completed:false, employed:false, employer:nil, employed_as:nil, took_survey:false)
Student.create(contact: piere, cohort:pluto, username:"piere", password:"password", completed:false, employed:false, employer:nil, employed_as:nil, took_survey:false)
Student.create(contact: steph, cohort:pluto, username:"steph", password:"password", completed:false, employed:false, employer:nil, employed_as:nil, took_survey:false)
Student.create(contact: toti, cohort:pluto, username:"toti", password:"password", completed:false, employed:false, employer:nil, employed_as:nil, took_survey:false)
Student.create(contact: victoria, cohort:pluto, username:"victoria", password:"password", completed:false, employed:false, employer:nil, employed_as:nil, took_survey:false)
Student.create(contact: yuka, cohort:pluto, username:"yuka", password:"password", completed:false, employed:false, employer:nil, employed_as:nil, took_survey:false)
Student.create(contact: zoe, cohort:pluto, username:"zoe", password:"password", completed:false, employed:false, employer:nil, employed_as:nil, took_survey:false)



CohortOfficer.create(contact: bobby, cohort: pluto, role: "Instructional Assistant")
CohortOfficer.create(contact: dennis, cohort: pluto, role: "Instructional Assistant")
CohortOfficer.create(contact: pan, cohort: pluto, role: "Instructor")
CohortOfficer.create(contact: jaden, cohort: pluto, role: "Instructor")



js = Skill.create(name:"Javascript", description:"Fast, popular, front-end scripting language. Watch your tags.")
html = Skill.create(name:"HTML", description:"HYPERTEXT MARKUP LANGUAGE.")
ruby = Skill.create(name:"Ruby", description:"THE ULTIMATE LANGUAGE")

StudentSkill.create(student: student_nick, skill: js, experience: "NOT A TON")
ProgramSkill.create(program: wdi, skill: js)

StudentSkill.create(student: student_nick, skill: html, experience: "NOT A TON")
ProgramSkill.create(program: wdi, skill: html)
