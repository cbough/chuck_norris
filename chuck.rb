require 'chuck_norris'

class ChuckJokes

  def self.help
    puts 'Enter "ruby app.rb random" for a random joke'
    puts 'Enter "ruby app.rb {id}" for a joke with an ID'
    puts 'Enter "ruby app.rb {first_name} {last_name}" for a joke with a name you want'
  end

  def self.get_joke_by_id(id)
    ChuckNorris::JokeFinder.find_joke(id.to_i).joke
  end

  def self.replace_name(first_name, last_name)
    ChuckNorris::JokeFinder.get_joke(first_name: first_name.capitalize, last_name: last_name.capitalize).joke
  end

  def self.random
    ChuckNorris::JokeFinder.get_joke.joke
  end

end
