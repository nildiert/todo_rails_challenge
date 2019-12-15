require 'rails_helper'

RSpec.describe Task, type: :model do

  context 'validation tests' do

    it 'ensures name presence' do
      task = Task.new(status: false).save
      expect(task).to eq(false)
    end

    it 'should default status to false' do
      task = Task.new(name: 'new task')
      task.status.should == false
    end

    it 'should save successfully presence' do
      task = Task.new(name: 'new task').save
      expect(task).to eq(true)
    end

  end
  
  context 'scope tests' do
    
    let (:params) { {name: 'task'} }
    before(:each) do
      Task.new(params).save
      Task.new(params).save
      Task.new(params.merge(status: true)).save
      Task.new(params.merge(status: false)).save
      Task.new(params.merge(status: false)).save
    end

    it 'should return completed tasks' do
      expect(Task.completed_tasks.size).to eq(1)
    end

    it 'should return incompleted tasks' do
      expect(Task.incompleted_tasks.size).to eq(4)
    end
  end
end