require 'rails_helper'

RSpec.describe Task, :type => :model do
  let(:task) {Task.new(name: "task", complete: true)}  
  
  it "should be valid with all the required fields" do
    expect(task).to be_valid
  end

  it "should be invalid without a name" do
    task.name = nil 
    expect(task).to be_invalid
  end

  it "should have a complete status" do
    task.complete = nil
    expect(task).to be_invalid
  end

  it "should have a default value of false for complete" do
    task1 = Task.new
    expect(task1.complete).to eq(false)
  end


end
