require "open-uri"
require "json"

url = "https://api.producthunt.com/v1/posts/"
header = {
  "Authorization" => "Bearer f0b9ac2f490c3e8eeedb0a3774040b13814536ac991a40b842c30938d657d4fd"
}

posts = JSON.parse(open(url, header).read)["posts"]

puts posts.length

posts.each do |post|
  puts "#{post["name"]} - #{post["tagline"]}"
end
