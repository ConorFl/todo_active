require_relative 'config/application'
require_relative 'app/models/task_controller.rb'

# puts "Put your application code in #{File.expand_path(__FILE__)}"

def user_input()
  command = ARGV[0]
  case command
    when "list"
      TaskController.list
    when "add"
      TaskController.add(ARGV[1..-1].join(" "))
    when "delete"
      TaskController.delete(ARGV[1].to_i)
    when "complete"
      TaskController.complete_task(ARGV[1].to_i)
    else
      puts "Invalid command!"
  end
end
user_input
