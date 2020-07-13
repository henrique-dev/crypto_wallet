# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
mining_types = [
    {description: "Proof of Work", acronym: "PoW"},
    {description: "Proof of Stack", acronym: "PoS"},
    {description: "Proof of Capacity", acronym: "PoC"},
].each do |mining_type|
    MiningType.find_or_create_by!(mining_type)
end

coins = [{description: "Bitcoin", acronym: "BTC", url_image: "", mining_type: MiningType.all.sample},
    {description: "Ethereum", acronym: "ETH", url_image: "", mining_type: MiningType.all.sample},
    {description: "Dash", acronym: "DASH", url_image: "", mining_type: MiningType.all.sample}
].each do |coin|
    Coin.find_or_create_by!(coin)
end
