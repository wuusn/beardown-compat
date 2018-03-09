require "test_helper"

class Beardown::CompatTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Beardown::Compat::VERSION
  end

  def test_it_does_something_useful
    assert true
  end


  def test_compat_unorder_list
    filetest "ulist1"
  end

  def test_compat_todo
    filetest "todolist1"
  end

  def test_compat_bold_italic_underline_strike
    assert_equal parse("**test**"), "<p><b>test</b></p>\n"
    assert_equal parse("*test*"), "<p><i>test</i></p>\n"
    assert_equal parse("~test~"), "<p><u>test</u></p>\n"
    assert_equal parse("~~test~~"), "<p><s>test</s></p>\n"
    # not greedy
    # assert_equal parse("~~~***test***~~~"), "<p><s><u><b><i>test</i></b></u></s></p>\n"
  end
end
