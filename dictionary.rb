require "http"

api_key = 

while true
  system "clear"
  puts "Enter a word: (enter 'q' to quit)"
  user_input = gets.chomp
  if user_input == "q"
    break
  else
    definitions = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=#{api_key}")
    word_one = definitions.parse(:json)
    puts "#{user_input.capitalize}: #{word_one[0]["text"]}"

    example = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/examples?includeDuplicates=false&useCanonical=false&limit=5&api_key=#{api_key}")
    word_two = example.parse(:json)
    puts "Example: #{word_two["examples"][0]["text"]}"

    pronunciation = HTTP.get("https://api.wordnik.com/v4/word.json/#{user_input}/pronunciations?useCanonical=false&limit=50&api_key=#{api_key}")
    word_three = pronunciation.parse(:json)
    puts "Pronunciation: #{word_three[0]["raw"]}"
  end
end 