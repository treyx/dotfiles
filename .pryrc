begin
  require 'awesome_print'
  Pry.config.print = proc { |output, value| output.puts value.ai }
rescue LoadError => err
  puts "no awesome_print :("
end

Pry.config.theme = "tomorrow"
Pry.config.editor = 'vim'

Pry.commands.alias_command '??', 'whereami'

