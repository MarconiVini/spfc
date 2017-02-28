# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Creating admins"
u = Admin.new(name: "Marcos Santini", email: "cardosounicamp@gmail.com", password: "1234qwerty")
u.save
puts "usuário #{u.name} salvo com sucesso !"
u = Admin.new(name: "Mauricio Santini", email: "mauriciocsantini@gmail.com", password: "1234qwerty")
u.save
puts "usuário #{u.name} salvo com sucesso !"

puts "-" * 20

post = Post.new(
  title: "Gilberto o melhor atacante do São Paulo de muitos anos",
  summary: "Com tantos gols e assistências será que o Pratto terá alguma chance na titularidade?",
  body: "<div>Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Idque Caesaris facere voluntate liceret: sese habere. Magna pars studiorum, prodita quaerimus. Magna pars studiorum, prodita quaerimus. Fabio vel iudice vincam, sunt in culpa qui officia. Vivamus sagittis lacus vel augue laoreet rutrum faucibus.<br><br></div><div>Nihilne te nocturnum praesidium Palati, nihil urbis vigiliae. Non equidem invideo, miror magis posuere velit aliquet. Qui ipsorum lingua Celtae, nostra Galli appellantur. Prima luce, cum quibus mons aliud consensu ab eo. Petierunt uti sibi concilium totius Galliae in diem certam indicere.<br><br><br></div><blockquote>Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Idque Caesaris facere voluntate liceret: sese habere. Magna pars studiorum, prodita quaerimus.&nbsp;</blockquote><div>Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Idque Caesaris facere voluntate liceret: sese habere. Magna pars studiorum, prodita quaerimus. <strong>Magna pars studiorum, prodita quaerimus</strong>. Fabio vel iudice vincam, sunt in culpa qui officia. Vivamus sagittis lacus vel augue laoreet rutrum faucibus.<br><br></div><div>Nihilne te nocturnum praesidium Palati, nihil urbis vigiliae. Non equidem invideo, miror magis posuere velit aliquet. Qui ipsorum lingua Celtae, nostra Galli appellantur. Prima luce, cum quibus mons aliud consensu ab eo. Petierunt uti sibi concilium totius Galliae in diem certam indicere.<br><br></div><ul><li>Lorem ipsum d</li><li>Lorem ipsum dolorolor</li><li>Lorem ipsum dolor</li></ul><div><br>The End...</div><div><br><br></div><div><br></div>"
)

post.save!
puts "Post 1 salvo!"

post2 = Post.new(
  title: "Quem será o melhor goleiro para jogar no atual elenco?",
  summary: "Com dúvidas o Rogério Ceni não tem ideia de quem colocar na titularidade",
  body: "<div>Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Idque Caesaris facere voluntate liceret: sese habere. Magna pars studiorum, prodita quaerimus. Magna pars studiorum, prodita quaerimus. Fabio vel iudice vincam, sunt in culpa qui officia. Vivamus sagittis lacus vel augue laoreet rutrum faucibus.<br><br></div><div>Nihilne te nocturnum praesidium Palati, nihil urbis vigiliae. Non equidem invideo, miror magis posuere velit aliquet. Qui ipsorum lingua Celtae, nostra Galli appellantur. Prima luce, cum quibus mons aliud consensu ab eo. Petierunt uti sibi concilium totius Galliae in diem certam indicere.<br><br><br></div><blockquote>Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Idque Caesaris facere voluntate liceret: sese habere. Magna pars studiorum, prodita quaerimus.&nbsp;</blockquote><div>Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Idque Caesaris facere voluntate liceret: sese habere. Magna pars studiorum, prodita quaerimus. <strong>Magna pars studiorum, prodita quaerimus</strong>. Fabio vel iudice vincam, sunt in culpa qui officia. Vivamus sagittis lacus vel augue laoreet rutrum faucibus.<br><br></div><div>Nihilne te nocturnum praesidium Palati, nihil urbis vigiliae. Non equidem invideo, miror magis posuere velit aliquet. Qui ipsorum lingua Celtae, nostra Galli appellantur. Prima luce, cum quibus mons aliud consensu ab eo. Petierunt uti sibi concilium totius Galliae in diem certam indicere.<br><br></div><ul><li>Lorem ipsum d</li><li>Lorem ipsum dolorolor</li><li>Lorem ipsum dolor</li></ul><div><br>The End...</div><div><br><br></div><div><br></div>"
)

post2.save!
puts "Post 2 salvo!"

post3 = Post.new(
  title: "Da Melhor defesa para a pior defesa do campeonato",
  summary: "O que vem acontecendo com a defesa que está tão exposta? quais os pontos positivos e negativos?",
  body: "<div>Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Idque Caesaris facere voluntate liceret: sese habere. Magna pars studiorum, prodita quaerimus. Magna pars studiorum, prodita quaerimus. Fabio vel iudice vincam, sunt in culpa qui officia. Vivamus sagittis lacus vel augue laoreet rutrum faucibus.<br><br></div><div>Nihilne te nocturnum praesidium Palati, nihil urbis vigiliae. Non equidem invideo, miror magis posuere velit aliquet. Qui ipsorum lingua Celtae, nostra Galli appellantur. Prima luce, cum quibus mons aliud consensu ab eo. Petierunt uti sibi concilium totius Galliae in diem certam indicere.<br><br><br></div><blockquote>Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Idque Caesaris facere voluntate liceret: sese habere. Magna pars studiorum, prodita quaerimus.&nbsp;</blockquote><div>Lorem ipsum dolor sit amet, consectetur adipisici elit, sed eiusmod tempor incidunt ut labore et dolore magna aliqua. Idque Caesaris facere voluntate liceret: sese habere. Magna pars studiorum, prodita quaerimus. <strong>Magna pars studiorum, prodita quaerimus</strong>. Fabio vel iudice vincam, sunt in culpa qui officia. Vivamus sagittis lacus vel augue laoreet rutrum faucibus.<br><br></div><div>Nihilne te nocturnum praesidium Palati, nihil urbis vigiliae. Non equidem invideo, miror magis posuere velit aliquet. Qui ipsorum lingua Celtae, nostra Galli appellantur. Prima luce, cum quibus mons aliud consensu ab eo. Petierunt uti sibi concilium totius Galliae in diem certam indicere.<br><br></div><ul><li>Lorem ipsum d</li><li>Lorem ipsum dolorolor</li><li>Lorem ipsum dolor</li></ul><div><br>The End...</div><div><br><br></div><div><br></div>"
)

post3.save!
puts "Post 3 salvo!"

puts "-" * 20
