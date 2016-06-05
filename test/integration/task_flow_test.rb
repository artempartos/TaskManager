require 'test_helper'

class TaskFlowTest < ActionDispatch::IntegrationTest

  def setup
    @task = generate :task
  end

  test "can see the tasks list" do
    get "/"
    assert_select "h1", "Tasks"
  end

  test "can create an article" do
    get "/tasks/new"
    assert_response :success

    post "/tasks",
      { task: @task }
    assert_response :redirect
    follow_redirect!
    assert_response :success
  end
end
