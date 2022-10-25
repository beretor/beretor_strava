require "test_helper"

class TrainingRunsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @training_run = training_runs(:one)
  end

  test "should get index" do
    get training_runs_url
    assert_response :success
  end

  test "should get new" do
    get new_training_run_url
    assert_response :success
  end

  test "should create training_run" do
    assert_difference("TrainingRun.count") do
      post training_runs_url, params: { training_run: {  } }
    end

    assert_redirected_to training_run_url(TrainingRun.last)
  end

  test "should show training_run" do
    get training_run_url(@training_run)
    assert_response :success
  end

  test "should get edit" do
    get edit_training_run_url(@training_run)
    assert_response :success
  end

  test "should update training_run" do
    patch training_run_url(@training_run), params: { training_run: {  } }
    assert_redirected_to training_run_url(@training_run)
  end

  test "should destroy training_run" do
    assert_difference("TrainingRun.count", -1) do
      delete training_run_url(@training_run)
    end

    assert_redirected_to training_runs_url
  end
end
