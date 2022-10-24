# frozen_string_literal: true

require 'test_helper'

class YouTeeEffsControllerTest < ActionDispatch::IntegrationTest
  test 'show returns ok' do
    you_tee_eff = YouTeeEff.create(text: "text")
    get you_tee_eff_path(you_tee_eff)
    assert_response :success
  end

  test "create fails with bad input" do
    assert_difference "YouTeeEff.count", 0 do
      post you_tee_effs_path, params: {
        text: nil
      }
    end

    assert_response :unprocessable_entity
  end

  test "create redirects to show on good input" do
    assert_difference "YouTeeEff.count", 1 do
      post you_tee_effs_path, params: {
        text: "the text"
      }
    end

    you_tee_eff = YouTeeEff.last
    assert_redirected_to you_tee_eff_path(you_tee_eff)
  end
end
