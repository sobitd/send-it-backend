require "test_helper"

class ParcelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @parcel = parcels(:one)
  end

  test "should get index" do
    get parcels_url
    assert_response :success
  end

  test "should get new" do
    get new_parcel_url
    assert_response :success
  end

  test "should create parcel" do
    assert_difference("Parcel.count") do
      post parcels_url, params: { parcel: { destination: @parcel.destination, from: @parcel.from, order_status: @parcel.order_status, recipient_address: @parcel.recipient_address, recipient_contact: @parcel.recipient_contact, recipient_name: @parcel.recipient_name, total_cost: @parcel.total_cost, weight: @parcel.weight } }
    end

    assert_redirected_to parcel_url(Parcel.last)
  end

  test "should show parcel" do
    get parcel_url(@parcel)
    assert_response :success
  end

  test "should get edit" do
    get edit_parcel_url(@parcel)
    assert_response :success
  end

  test "should update parcel" do
    patch parcel_url(@parcel), params: { parcel: { destination: @parcel.destination, from: @parcel.from, order_status: @parcel.order_status, recipient_address: @parcel.recipient_address, recipient_contact: @parcel.recipient_contact, recipient_name: @parcel.recipient_name, total_cost: @parcel.total_cost, weight: @parcel.weight } }
    assert_redirected_to parcel_url(@parcel)
  end

  test "should destroy parcel" do
    assert_difference("Parcel.count", -1) do
      delete parcel_url(@parcel)
    end

    assert_redirected_to parcels_url
  end
end
