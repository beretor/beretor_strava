require "application_system_test_case"

class TrainingRunsTest < ApplicationSystemTestCase
  setup do
    @training_run = training_runs(:one)
  end

  test "visiting the index" do
    visit training_runs_url
    assert_selector "h1", text: "Training runs"
  end

  test "should create training run" do
    visit training_runs_url
    click_on "New training run"

    click_on "Create Training run"

    assert_text "Training run was successfully created"
    click_on "Back"
  end

  test "should update Training run" do
    visit training_run_url(@training_run)
    click_on "Edit this training run", match: :first

    click_on "Update Training run"

    assert_text "Training run was successfully updated"
    click_on "Back"
  end

  test "should destroy Training run" do
    visit training_run_url(@training_run)
    click_on "Destroy this training run", match: :first

    assert_text "Training run was successfully destroyed"
  end
end
