require_relative "post"
require_relative "link"
require_relative "memo"
require_relative "task"


puts "Привет, я твой блокнот!"
puts "Что хотите записать в блокнот?"

choices = Post.post_types

choice = -1

until choice >= 0 && choice < choices.size
  choices.each_with_index do |type, index|
    puts "\t #{index}. #{type}"
  end

  choice = STDIN.gets.chomp.to_i
end

entry = Post.created(choice)

entry.read_from_console

entry.save

puts "Запись сохранена."
