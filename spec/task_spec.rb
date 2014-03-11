require 'rspec'
require 'task'
require 'list'

describe List do
  before do
    List.clear
  end
end

describe Task do
  it("will initialize a new task") do
    test_list = Task.new("Sweep the house")
    test_list.should be_an_instance_of Task
  end

  it("will create a new task") do
    test_list = Task.new("Sweep the house")
    test_list.task_name.should eq("Sweep the house")
  end
end
