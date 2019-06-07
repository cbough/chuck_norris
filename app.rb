require'./chuck'
chuck = ChuckJokes.new

if ARGV.empty?
  chuck.help
else
  if ARGV.length == 2
    chuck.replace_name(ARGV[0], ARGV[1])
  elsif ARGV[0] == 'random'
    chuck.random
  else
    chuck.get_joke_by_id(ARGV[0])
  end
end
