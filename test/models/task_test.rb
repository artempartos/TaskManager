require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  def setup
    @task = generate :task
    @task_for_update = generate :task_for_update
  end

  def test_create_task
    task = Task.new(@task)
    assert task.save
  end

  def test_delete_task
    task = Task.new(@task)
    task.save
    assert task.destroy
  end

  def test_update_task
    task = Task.new(@task)
    task.save
    assert task.update(@task_for_update)
  end
end
