require 'test_helper'

class StudentListsControllerTest < ActionController::TestCase
  setup do
    @student_list = student_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_list" do
    assert_difference('StudentList.count') do
      post :create, student_list: { address: @student_list.address, faculty_id: @student_list.faculty_id, first_name: @student_list.first_name, last_name: @student_list.last_name, middle_name: @student_list.middle_name, phone_number: @student_list.phone_number, roll_number: @student_list.roll_number }
    end

    assert_redirected_to student_list_path(assigns(:student_list))
  end

  test "should show student_list" do
    get :show, id: @student_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_list
    assert_response :success
  end

  test "should update student_list" do
    put :update, id: @student_list, student_list: { address: @student_list.address, faculty_id: @student_list.faculty_id, first_name: @student_list.first_name, last_name: @student_list.last_name, middle_name: @student_list.middle_name, phone_number: @student_list.phone_number, roll_number: @student_list.roll_number }
    assert_redirected_to student_list_path(assigns(:student_list))
  end

  test "should destroy student_list" do
    assert_difference('StudentList.count', -1) do
      delete :destroy, id: @student_list
    end

    assert_redirected_to student_lists_path
  end
end
