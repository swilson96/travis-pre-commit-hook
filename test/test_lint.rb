require 'minitest/autorun'
require 'travis_lint'

class TravisLintTest < Minitest::Test
  def test_minimal_is_valid
    assert_equal "hello world",
                 TravisLint.validate('./test/examples/minimal.yml')
  end

  def test_empty_is_valid
    assert_equal "hello world",
                 TravisLint.validate('./test/examples/empty.yml')
  end

  def test_bad_languages_is_invalid
    assert_equal "hello world",
                 TravisLint.validate('./test/examples/bad_language.yml')
  end
end
