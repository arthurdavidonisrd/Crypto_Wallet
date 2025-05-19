
coins = [
  {
    description: "Bitcoin",
    acronym: "BTC",
    url_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/4/46/Bitcoin.svg/1024px-Bitcoin.svg.png"
  },
  {
    description: "Ethereum",
    acronym: "ETH",
    url_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Ethereum_logo_2014.svg/1257px-Ethereum_logo_2014.svg.png"
  },
  {
    description: "Dogecoin",
    acronym: "DOGE",
    url_image: "https://upload.wikimedia.org/wikipedia/pt/d/d0/Dogecoin_Logo.png"
  }
]

coins.each do |coin|
  Coin.find_or_create_by!(coin)
end
