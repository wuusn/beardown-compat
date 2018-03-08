require "test_helper"

class Beardown::CompatTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Beardown::Compat::VERSION
  end

  def test_it_does_something_useful
    assert true
  end

  def parse(text)
    Beardown.new(text).to_html
  end

  def filetest(file_pre)
    dir = File.dirname(__FILE__) + "/examples"
    input = File.open("#{dir}/#{file_pre}.txt").read
    output = File.open("#{dir}/#{file_pre}.html").read
    assert_equal  parse(input), output
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
    assert_equal parse("~~~***test***~~~"), "<p><s><u><b><i>test</i></b></u></s></p>\n"
  end
end
