require "open-uri"
require "json"

require_relative "product"

url = "https://api.producthunt.com/v1/posts/"
header = {
  "Authorization" => "Bearer f0b9ac2f490c3e8eeedb0a3774040b13814536ac991a40b842c30938d657d4fd"
}

posts = JSON.parse(open(url, header).read)["posts"]

products = []


posts.each do |post|
  products << Product.new(post["name"], post["tagline"])
end

products.each do |product|
  puts "#{product.name} - #{product.tagline}"
end
