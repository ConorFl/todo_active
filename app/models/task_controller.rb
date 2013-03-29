require_relative 'task'

class TaskController

  def self.list
    full_list = return_full_list
    i = 0
    full_list.each do |task|
      puts "#{i += 1}. #{task.description} (#{task.status})"
    end
    # p full_list.class
  end
# delete_element_id = full_list[182].id
# delete(delete_element_id)
  def self.delete(list_number)
    full_list = TaskController.return_full_list
    delete_id = full_list[list_number-1].id
    Task.find(delete_id).destroy
    TaskController.list
  end

  def self.add(description)
    Task.create!(:description => description, :status => :incomplete) 
  end

  def self.complete_task(list_number)
    full_list = TaskController.return_full_list
    complete_id = full_list[list_number-1].id
    Task.update(complete_id, :status => :complete)
    TaskController.list
  end
  private

  def self.return_full_list
    Task.find(:all)
  end
end
# TaskController.list
# TaskController.delete(88)
# TaskController.add("Get sleep!")
# TaskController.list

