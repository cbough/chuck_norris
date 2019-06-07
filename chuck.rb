require 'chuck_norris'

class ChuckJokes

  def help
    puts 'Enter "ruby app.rb random" for a random joke'
    puts 'Enter "ruby app.rb {id}" for a joke with an ID'
    puts 'Enter "ruby app.rb {first_name} {last_name}" for a joke with a name you want'
  end

  def get_joke_by_id(id)
    jk = ChuckNorris::JokeFinder.find_joke(id.to_i)
    puts jk.joke
  end

  def replace_name(fname, lname)
    jk = ChuckNorris::JokeFinder.get_joke(fname, lname)
    puts jk.joke
  end

  def random
    jk = ChuckNorris::JokeFinder.get_joke
    puts jk.joke
  end

end
