require 'test_helper'

class TasksControllerTest < ActionController::TestCase
  setup do
    @task = create :task
    @attrs = attributes_for :task
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create task" do
    assert_difference('Task.count') do
      post :create, task: @attrs
    end

    assert_redirected_to task_path(assigns(:task))
  end

  test "should show task" do

    get :show, id: @task.id
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @task.id
    assert_response :success
  end

  test "should update task" do
    patch :update, id: @task.id, task: @attrs
    assert_redirected_to task_path(assigns(:task))
  end

  test "should destroy task" do
    assert_difference('Task.count', -1) do
      delete :destroy, id: @task.id
    end

    assert_redirected_to tasks_path
  end
end
