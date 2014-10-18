class Command
  def load_plugins(path = './plugins/')
    Dir.foreach(path) do |file|
      if file != '.' and file != '..' then
        require path + file
      end
    end
  end

  def execute(name)
    eval(name)
  end
end

command = Command.new
command.load_plugins('./plugins/')
command.execute 'Greeting.hello'
