require 'bundler/setup'
require 'minitest/autorun'
require 'wcag_color_contrast'

class WCAGColorContrastTest < MiniTest::Unit::TestCase
  def test_ratios
    assert_in_delta 2.849, WCAGColorContrast.ratio('999', 'ffffff')
    assert_in_delta 1.425, WCAGColorContrast.ratio('d8d8d8', 'fff')
    assert_in_delta 1.956, WCAGColorContrast.ratio('eee', 'AAABBB')
  end
end
