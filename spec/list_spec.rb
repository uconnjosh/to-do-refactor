require 'rspec'
require 'task'
require 'list'

describe List do
  before do
    List.clear
  end
end

describe List do
  it("will initialize a new list") do
    test_list = List.new("Chores")
    test_list.should be_an_instance_of List
  end

  it("will add a new list to the class lists array") do
    test_list = List.new("Chores")
    test_list.save
    List.all.should eq [test_list]
  end
end
