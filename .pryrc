# === config ===
Pry.config.color = true
Pry.config.theme = "tomorrow"

# === editor ===
Pry.config.editor = "vim"

# === plugins ===
begin
  require "awesome_print"
  Pry.config.print = proc { |output, value| output.puts value.ai }
rescue LoadError
  puts "no awesome_print :("
end

# === prompt ===

# wrap ANSI codes so Readline knows where the prompt ends
def colour(name, text)
  if Pry.color
    "\001#{Pry::Helpers::Text.send name, '{text}'}\002".sub '{text}', "\002#{text}\001"
  else
    text
  end
end

Pry.config.prompt = [
  proc do |object, nest_level, pry|
    prompt  = colour :bright_black, Pry.view_clip(object)
    prompt += ":#{nest_level}" if nest_level > 0
    prompt += colour :cyan, ' » '
  end, proc { |object, nest_level, pry| colour :cyan, '» ' }
]

# awesome inspect the asset pipeline
if defined? Rails
  Pry.config.commands.command "pipeline", "Rails.application.config.assets.paths" do
    output.puts Rails.application.config.assets.paths.ai
  end
end
