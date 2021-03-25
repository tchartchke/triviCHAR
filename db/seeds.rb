# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create :email => 'bobthany@media.tv', :password => 'passpass', :password_confirmation => 'passpass'

User.last.quizzes.create(title: "TV Trivia")
Quiz.last.rounds.create(subject: "Friends!")
Round.last.questions.create(question:"How many seasons did Friends run for", answer:Answer.new(answer:"Ten"))
Round.last.questions.create(question: "Joey played Dr. Drake Ramoray on which soap opera show?", answer:Answer.new(answer:" Days of Our Lives"))
Round.last.questions.create(question: "How many times did Ross get divorced?", answer:Answer.new(answer:"Three"))
Round.last.questions.create(question: "What store does Phoebe hate?", answer:Answer.new(answer:"Pottery Barn"))
Round.last.questions.create(question: "Rachel got a job with which company in Paris?", answer:Answer.new(answer:"Louis Vuitton"))
Round.last.questions.create(question: "What was the occupation of Rachel’s fiancé Barry Farber?", answer:Answer.new(answer:"Orthodontist"))
Round.last.questions.create(question: "Phoebe’s scientist boyfriend David worked in what city?", answer:Answer.new(answer:"Minsk"))
Round.last.questions.create(question: " What is Chandler Bing’s middle name?", answer:Answer.new(answer:"Muriel"))
Round.last.questions.create(question: "Which of Joey’s sisters did Chandler fool around with?", answer:Answer.new(answer:"Mary Angela"))
Round.last.questions.create(question: "What was Monica’s nickname when she was a field hockey goalie?", answer:Answer.new(answer:"Big Fat Goalie"))
Round.last.questions.create(question: "What was the name of Chandler and Ross’ college band?", answer:Answer.new(answer:"Way, No Way"))
Round.last.questions.create(question: "Phoebe is a surrogate for who?", answer:Answer.new(answer:"Her half-brother Frank Jr. and his wife Alice"))

Quiz.last.rounds.create(subject: "Grey's Anatomy")
Round.last.questions.create(question:"Who does Cristina stab with an epi?", answer:Answer.new(answer:"Alex"))
Round.last.questions.create(question:"In season 6 in the episode \"Sanctuary\", who was the second doctor that got shot?", answer:Answer.new(answer:"Dr. Karev"))
Round.last.questions.create(question:"Who was Dr. McDreamy?", answer:Answer.new(answer:"Derek Shepherd"))
Round.last.questions.create(question:"Which of the following people has never been pregnant or had a child?", answer:Answer.new(answer:"Alex"))
Round.last.questions.create(question:"Which intern paid off her debts with money she earned by modeling?", answer:Answer.new(answer:"Izzie"))
Round.last.questions.create(question:"What tragic event happens to Cristina on her wedding day in season three?", answer:Answer.new(answer:"She gets her eyebrows waxed off."))
Round.last.questions.create(question:"Viewers were left in suspense at the end of the fifth season when George O'Malley and Izzie Stevens, both patients at the time, both flatlined as their friends frantically tried to save them. What was the outcome, as shown in the sixth season premiere, \"Good Mourning\"?", answer:Answer.new(answer:"George died and Izzie lived"))

Quiz.last.rounds.create(subject: "EastEnders")
Round.last.questions.create(question:"Michael French played which character?", answer:Answer.new(answer:"David Wicks"))
Round.last.questions.create(question:"Whose boyfriend conducted Lou Beale's funeral?", answer:Answer.new(answer:"Sharon"))
Round.last.questions.create(question:"\'EastEnders\' first aired in the UK during which year?", answer:Answer.new(answer:"1985"))
Round.last.questions.create(question:"Who did Lisa shoot?", answer:Answer.new(answer:"Phil"))
Round.last.questions.create(question:"Sanjay was teaching Michelle how to drive, and rumours were spreading about them having an affair. Even as it was shown that driving lessons were the only reason Michelle was going out with him, and his wife Gita was reassured that he was not playing around, the viewers learnt that he was seeing another woman. Who was he seeing?", answer:Answer.new(answer:"Meena"))
Round.last.questions.create(question:"Who has been, at different times, Landlady, Barmaid and Acting Manager of the Queen Vic, as well as having been barred from drinking there, over the years?", answer:Answer.new(answer:"Pat"))
Round.last.questions.create(question:"Where were Zoe and Anthony going to pursue their relationship and escape the disapproval of her family?", answer:Answer.new(answer:"Edinburgh"))
Round.last.questions.create(question:"Who is Bianca Jackson's mother?", answer:Answer.new(answer:"Carol"))
Round.last.questions.create(question:"Who killed Eddie Royle?", answer:Answer.new(answer:"Nick Cotton"))

Quiz.last.rounds.create(subject: "Disney Channel")
Round.last.questions.create(question:"Which Disney Channel show has a family of 1 brother, 1 sister, 1 mom (and later was included a step-dad and step-brother) and the daughter has a best friend who dances with her on a television show?", answer:Answer.new(answer:"Shake It Up"))
Round.last.questions.create(question:"What show followed the adventures of two characters who were in a 1994 Disney movie?", answer:Answer.new(answer:"Timon and Pumbaa"))
Round.last.questions.create(question:"Why doesn't Lexi like Chyna in \"A.N.T. Farm\"?", answer:Answer.new(answer:"She is stealing her attention"))
Round.last.questions.create(question:"On the show \"Good Luck Charlie\" whose idea was it to make a video diary for their baby sister?", answer:Answer.new(answer:"Teddy"))
Round.last.questions.create(question:"On the show \"That\'s So Raven\" who are Raven\'s best friends?", answer:Answer.new(answer:"Eddie and Chelsea"))
Round.last.questions.create(question:"Who says this: \"I have this little sister, Lola. She is small and very funny.\"?", answer:Answer.new(answer:"Charlie"))
Round.last.questions.create(question:"In the show \"Phineas and Ferb\", Perry the Platypus is a secret agent. What is his arch enemy's name?", answer:Answer.new(answer:"Dr. Heinz Doofenshmirtz"))

Quiz.last.publish

User.last.quizzes.create(title: "Plants!")

Quiz.last.rounds.create(subject: "Succulents")
Round.last.questions.create(question:"What is the definition of a succulent plant?", answer:Answer.new(answer:"A plant that can store and conserve water to protect against drought"))
Round.last.questions.create(question:"What is the relationship between a cactus and a succulent?", answer:Answer.new(answer:"All cacti are succulents, but not all succulents are cacti"))
Round.last.questions.create(question:"Some of the most unusual succulents have normal seasonal foliage growing out of huge swollen water storage organs. What is the term for the water reservoir of these plants?", answer:Answer.new(answer:"Caudex"))
Round.last.questions.create(question:"What method of propagation (starting new plants) is almost exclusive to succulent plants?", answer:Answer.new(answer:"Leaf cuttings"))
Round.last.questions.create(question:"After taking a section of a succulent plant to start a new one, what is the first thing you should do with the cutting?", answer:Answer.new(answer:"Put it away to let the end dry up"))
Round.last.questions.create(question:"What is scoria?", answer:Answer.new(answer:"A volcanic gravel"))
Round.last.questions.create(question:"The cactus family is native to which two continents?", answer:Answer.new(answer:"North and South America"))
Round.last.questions.create(question:"Which country has the most native cactus species?", answer:Answer.new(answer:"Mexico"))
Round.last.questions.create(question:"Organ Pipe Cactus National Monument in Arizona has been badly damaged recently (2002). What is the cause?", answer:Answer.new(answer:"Illegal traffic across the Mexican border"))

Quiz.last.rounds.create(subject: "Flower Power!")
Round.last.questions.create(question:"Which flower symbolizes beauty?", answer:Answer.new(answer:"Rose"))
Round.last.questions.create(question:"Which flower represents faithfulness and modesty?", answer:Answer.new(answer:"violet"))
Round.last.questions.create(question:"Which of the following symbolizes sincerity?", answer:Answer.new(answer:"fern"))
Round.last.questions.create(question:"What are the four herbs mentioned in the song 'Scarborough Fair'?", answer:Answer.new(answer:"parsley, sage, rosemary, thyme"))
Round.last.questions.create(question:"What does the daisy represent?", answer:Answer.new(answer:"innocence"))

Quiz.last.publish

User.last.quizzes.create(title: "Rando Knowledge")

Quiz.last.rounds.create(subject: "Geography")
Round.last.questions.create(question:"What is the world's biggest island?", answer:Answer.new(answer:"Greenland"))
Round.last.questions.create(question:"What is the diameter of Earth?", answer:Answer.new(answer:"8,000 miles"))
Round.last.questions.create(question:"What is the name of the world's most ancient forest, and where is it located?", answer:Answer.new(answer:"Daintree Forest, north of Cairns, Australia"))
Round.last.questions.create(question:"Which four British cities have underground rail systems?", answer:Answer.new(answer:"Liverpool, Glasgow, Newcastle and London"))
Round.last.questions.create(question:"What is the capital city of Spain?", answer:Answer.new(answer:"Madrid"))
Round.last.questions.create(question:"Which country is Prague in?", answer:Answer.new(answer:"Czech Republic"))
Round.last.questions.create(question:"Which British town was a forerunner of the Parks Movement and the first city in Europe to have a street tram system?", answer:Answer.new(answer:"Birkenhead"))

Quiz.last.rounds.create(subject: "Movies")
Round.last.questions.create(question:"What actor starred in 142 films including The Quiet Man, The Shootist, The Searchers and Stagecoach?", answer:Answer.new(answer:"John Wayne"))
Round.last.questions.create(question:"What noir actress starred in I Married a Witch, The Glass Key, So Proudly We Hail! and Sullivan's Travels?", answer:Answer.new(answer:"Veronica Lake"))
Round.last.questions.create(question:"What is the title of the first film ever made, and when was it made?", answer:Answer.new(answer:"Roundhay Garden Scene, made in 1888"))
Round.last.questions.create(question:"Which actress's career launched at the age of three, and then went on to star in films such as Contact, Maverick and The Silence of the Lambs?", answer:Answer.new(answer:"Jodie Foster"))
Quiz.last.publish

User.create :email => 'jerathan@internet.org', :password => 'passpass', :password_confirmation => 'passpass'

User.last.quizzes.create(title: "fun stuff")
Quiz.last.rounds.create(subject: "Sports")
Round.last.questions.create(question:"What colour jersey is worn by the winners of each stage of the Tour de France?", answer:Answer.new(answer:"Yellow"))
Round.last.questions.create(question:"Which heavyweight boxing champion was the only one to finish his career of 49 fights without ever being defeated?", answer:Answer.new(answer:"Rocky Marciano"))
Round.last.questions.create(question:"Which country is home to the Cresta Run?", answer:Answer.new(answer:"Switzerland"))
Round.last.questions.create(question:"In football, who was nicknamed 'The Divine Ponytail'?", answer:Answer.new(answer:"Roberto Baggio"))

Quiz.last.rounds.create(subject: "Arts")
Round.last.questions.create(question:"What are the three primary colours?", answer:Answer.new(answer:"Red, yellow and blue"))
Round.last.questions.create(question:"What is the painting La Gioconda more usually known as?", answer:Answer.new(answer:"The Mona Lisa"))
Round.last.questions.create(question:"What is John Leach famous for making?", answer:Answer.new(answer:"Pottery"))
Round.last.questions.create(question:"Who painted How Sir Galahad, Sir Bors, and Sir Percival were Fed with the Sanc Grael; But Sir Percival's Sister Died by the Way?", answer:Answer.new(answer:"Dante Gabriel Rossetti"))

Quiz.last.rounds.create(subject: "Books")
Round.last.questions.create(question:"What is the oldest surviving printed book in the world?", answer:Answer.new(answer:"The Diamond Sutra, dated at 868 AD"))
Round.last.questions.create(question:"Who wrote the Vampire Chronicles, which include the novels Armand, Blood and Gold and Interview with the Vampire?", answer:Answer.new(answer:"Anne Rice"))
Round.last.questions.create(question:"How old is the world's oldest dictionary?", answer:Answer.new(answer:"Cuneiform tablets with bilingual Sumerian-Akkadian word lists have been dated to 2300 BCE"))
Round.last.questions.create(question:"When was the ebook invented?", answer:Answer.new(answer:"1971"))
Quiz.last.publish
