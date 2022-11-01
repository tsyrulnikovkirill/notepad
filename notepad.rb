require_relative 'lib/post'
require_relative 'lib/memo'
require_relative 'lib/link'
require_relative 'lib/task'

current_path = File.dirname(__FILE__ )

puts "Привет, я твой блокнот!"
puts "Что хотите записать в блокнот?"

choices = Post.post_types

choice = -1

until (0..choices.size - 1).include?(choice)
  choices.each_with_index do |type, index|
    puts "\t#{index}. #{type}"
  end
  choice = STDIN.gets.to_i
end

entry = Post.create(choice)

entry.read_from_console
entry.save(current_path)

puts "Ура, запись сохранена"
