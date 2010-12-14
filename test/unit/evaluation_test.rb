require 'test_helper'

class EvaluationTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Evaluation.new.valid?
  end
end
