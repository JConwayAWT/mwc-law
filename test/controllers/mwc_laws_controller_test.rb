require "test_helper"

class MwcLawsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mwc_law = mwc_laws(:one)
  end

  test "should get index" do
    get mwc_laws_url
    assert_response :success
  end

  test "should get new" do
    get new_mwc_law_url
    assert_response :success
  end

  test "should create mwc_law" do
    assert_difference('MwcLaw.count') do
      post mwc_laws_url, params: { mwc_law: {  } }
    end

    assert_redirected_to mwc_law_url(MwcLaw.last)
  end

  test "should show mwc_law" do
    get mwc_law_url(@mwc_law)
    assert_response :success
  end

  test "should get edit" do
    get edit_mwc_law_url(@mwc_law)
    assert_response :success
  end

  test "should update mwc_law" do
    patch mwc_law_url(@mwc_law), params: { mwc_law: {  } }
    assert_redirected_to mwc_law_url(@mwc_law)
  end

  test "should destroy mwc_law" do
    assert_difference('MwcLaw.count', -1) do
      delete mwc_law_url(@mwc_law)
    end

    assert_redirected_to mwc_laws_url
  end
end
