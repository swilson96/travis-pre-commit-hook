require 'minitest/autorun'
require 'travis_lint'

class TravisLintTest < Minitest::Test
  def test_validate_empty
    assert_equal "hello world",
      TravisLint.validate()
  end
end
