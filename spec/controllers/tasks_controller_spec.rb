require 'rails_helper'

RSpec.describe TasksController, :type => :controller do
  let!(:task1) { Task.create!(name: 'task1', complete: false) }
  let!(:task2) { Task.create!(name: 'task2', complete: true) }

  describe 'GET index' do
    before(:each) { get :index }  
    
    it "successfully render index" do
      expect( response ).to be_success
    end

    it "renders the index view file" do
      expect( response ).to render_template(:index)
    end

    it "assigns all the tasks to the tasks" do
      expect( assigns(:tasks) ).to include(task1, task2)
    end
  end

  describe 'Get new' do
    before(:each) { get :new }
    
    it "succesfully renders new" do
      expect(response).to be_success
    end

    it "renders the new view file" do
      expect(response).to render_template :new
    end

    it "assigns a new task to a variable task" do
      expect(assigns(:task)).to be_a(Task)
    end
  end
end
