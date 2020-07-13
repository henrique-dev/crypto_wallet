# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
* Comandos irb utilizados:
c.map {|coin| coin.description}
=> ["Bitcoin", "Ethereum", "Dash"]

c.map(&:description)
=> ["Bitcoin", "Ethereum", "Dash"]

c.map {|coin| [coin.description, coin.acronym]}
=> [["Bitcoin", "BTC"], ["Ethereum", "ETH"], ["Dash", "DASH"]]

c.pluck(:description, :acronym)
=> [["Bitcoin", "BTC"], ["Ethereum", "ETH"], ["Dash", "DASH"]]



* Comandos terminal utilizados:
rails _5.2_ new crypto_wallet -d=mysql
rails generate scaffold Coin description:string acronym:string url_image:string
rails db:create
rails db:migrate
RAILS_ENV=production rails s
rails server -e production
rails generate controller teste
rails destroy controller teste
rails generate controller welcome index
rails db:drop db:create db:Seed
rails g task dev setup
%x(ls) # EXECUTA COMANDOS DO TERMINAL DO LINUX DENTRO DO IRB
rails g scaffold MiningType description:string acronym:string
rails db:migrate db:seed
rails db:rollback
rails destroy scaffold MiningType
rails generate migration AddMiningTypeToCoins mining_type:references
rails assets:precompile # IMPORTANTE
RAILS_ENV=production rails db:create db:migrate
yarn add jquery
yarn add notify-js-legacy
yarn install