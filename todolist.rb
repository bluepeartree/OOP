class Task

  def initialize (description, due_date)
    @description = description
    @due_date = due_date
  end

  def description
    @description
  end

  def due_date
    @due_date
  end

  def description=(description)
    @description = description
  end

  def due_date=(due_date)
    @due_date = due_date
  end

end

class TodoList

  def initialize
    @tasks = []
  end

  def tasks
    @tasks
  end

  def tasks=(tasks)
    @tasks = tasks
  end

  def add_task(task)
    tasks << task
    return tasks
  end

  def output_list
    tasks.each do |task|
      puts "Remember to #{task.description} by #{task.due_date}!"
    end
  end

end

task1 = Task.new("pay bill", "November 28th")
task2 = Task.new("complete assignment", "November 22th")

list = TodoList.new

list.add_task(task1)
list.add_task(task2)

list.output_list
