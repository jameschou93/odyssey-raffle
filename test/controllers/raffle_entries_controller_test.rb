require 'test_helper'

class RaffleEntriesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get raffle_entries_create_url
    assert_response :success
  end

  test "should get index" do
    get raffle_entries_index_url
    assert_response :success
  end

end
