require 'test_helper'

class ExamScoresControllerTest < ActionController::TestCase
  setup do
    @exam_score = exam_scores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exam_scores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exam_score" do
    assert_difference('ExamScore.count') do
      post :create, exam_score: { exam_id: @exam_score.exam_id, mark: @exam_score.mark, student_list_id: @exam_score.student_list_id, subject_id: @exam_score.subject_id }
    end

    assert_redirected_to exam_score_path(assigns(:exam_score))
  end

  test "should show exam_score" do
    get :show, id: @exam_score
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exam_score
    assert_response :success
  end

  test "should update exam_score" do
    put :update, id: @exam_score, exam_score: { exam_id: @exam_score.exam_id, mark: @exam_score.mark, student_list_id: @exam_score.student_list_id, subject_id: @exam_score.subject_id }
    assert_redirected_to exam_score_path(assigns(:exam_score))
  end

  test "should destroy exam_score" do
    assert_difference('ExamScore.count', -1) do
      delete :destroy, id: @exam_score
    end

    assert_redirected_to exam_scores_path
  end
end
