begin
  require 'awesome_print'
  Pry.config.print = proc { |output, value| output.puts value.ai }
rescue LoadError => err
  puts "no awesome_print :("
end

Pry.config.theme = "tomorrow"
Pry.config.editor = 'vim'

Pry.commands.alias_command '??', 'whereami'

# awesome inspect the asset pipeline
if defined? Rails
  Pry.config.commands.command "pipeline", "Rails.application.config.assets.path" do
    output.puts Rails.application.config.assets.paths.ai
  end
end
