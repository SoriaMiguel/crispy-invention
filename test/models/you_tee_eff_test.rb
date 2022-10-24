require "test_helper"

class YouTeeEffTest < ActiveSupport::TestCase
  test "#encode returns encoded string" do
    you_tee_eff = YouTeeEff.create!(text: "Text! to be Encoded.")
    assert_equal "Grkg! gb or Rapbqrq.", you_tee_eff.encode
  end
end
