require 'test_helper'

class EvaluationsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end
  
  def test_show
    get :show, :id => Evaluation.first
    assert_template 'show'
  end
  
  def test_new
    get :new
    assert_template 'new'
  end
  
  def test_create_invalid
    Evaluation.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Evaluation.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to evaluation_url(assigns(:evaluation))
  end
  
  def test_edit
    get :edit, :id => Evaluation.first
    assert_template 'edit'
  end
  
  def test_update_invalid
    Evaluation.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Evaluation.first
    assert_template 'edit'
  end

  def test_update_valid
    Evaluation.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Evaluation.first
    assert_redirected_to evaluation_url(assigns(:evaluation))
  end
  
  def test_destroy
    evaluation = Evaluation.first
    delete :destroy, :id => evaluation
    assert_redirected_to evaluations_url
    assert !Evaluation.exists?(evaluation.id)
  end
end
