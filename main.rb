require './lib/task.rb'
require './lib/list.rb'


def main
  main_menu
  selection
end

def edit_list(list)
  @list = List.all[list - 1]
  puts @list.all_tasks
  puts "Would you like to add a task?"
  create_menu
  selection
end


def create_list
  puts "Enter a name for your list"
  list_name = gets.chomp
  List.create(list_name)
  main_menu
  selection
end

def list_display
  List.all
  puts "Press the lists number is you would like to edit"
  option = gets.chomp.to_i
  selection_list(option)
end

def main_menu
  puts "Menu:"
  puts "'L' - new list."
  puts "'X' - exit"
  puts "'P' - print lists."
  puts ""
end

def create_menu
  puts "Create:"
  puts "A - add task"
  puts "D - delete"
  puts "P - print task"
  puts ""
end

def selection
  print "Selection... "
  value = gets.chomp
  selection_options(value)
end

def selection_list(option = nil)
  print "Selection... "

  if (option != nil)
    edit_list(option)
  end
end

def add_task
  puts "Enter the name of the task youd like to add"
  task_name = gets.chomp


  @list.add_task(task_name)
  puts @list.inspect
  main
end

def selection_options(value)
  case value.upcase
  when "L"
    create_list
  when "P"
    list_display
  when "X"
    puts "GoodBye!!!"
  when "A"
    add_task
  end
end

main

