# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name:"Kevin",username:"kevin01", img_url:"https://vignette.wikia.nocookie.net/p__/images/5/5d/Home_alone_macaulay_culkin_kevin_mccallister_boy_fear_shout_fright_346_1600x1200.jpg/revision/latest?cb=20140320134854&path-prefix=protagonist", hobby:"darts")

User.create(name:"Tony",username:"tony01", img_url:"https://www.telegraph.co.uk/content/dam/news/2017/11/30/TELEMMGLPICT000148018716_trans_NvBQzQNjv4BqutIaqbtdgycbjoKap7Ft85iru5ESH6waxLG5-q_DX4Y.jpeg?imwidth=450", hobby:"chess")

User.create(name:"Eric",username:"eric01", img_url:"https://pmcvariety.files.wordpress.com/2018/04/eric-bana.jpg?w=1000", hobby:"balloons")
