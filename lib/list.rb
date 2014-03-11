require_relative 'task.rb'

class List
  @@all = []

  def List.all
    file = File.open('lib/list_art.txt')
    puts file.read
    puts ""

    @@all.each_with_index do |list, index|
      puts "#{index + 1}. #{list.list_name}"
    end
    @@all
  end

  def List.clear
    @@all = []
  end

  def save
    @@all << self
  end

  def List.create(list_name)
    new_list = List.new(list_name)
    new_list.save
    new_list
  end

  def initialize(list_name)
    @list_name = list_name
    @tasks = []
  end

  def tasks
    @tasks
  end

  def all_tasks
    puts file = File.open('lib/task_art.txt').read
    puts ""
    @tasks.each_with_index do |task, index|
      puts "#{index + 1}. #{task.task_name}"
    end
  end

  def list_name
    @list_name
  end

  def add_task(task_name)
    @tasks << Task.new(task_name)
  end
end
