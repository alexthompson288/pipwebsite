require 'test_helper'

class PipisodesControllerTest < ActionController::TestCase
  setup do
    @pipisode = pipisodes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pipisodes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pipisode" do
    assert_difference('Pipisode.count') do
      post :create, pipisode: { image_filename: @pipisode.image_filename, interactive_video: @pipisode.interactive_video, label_text: @pipisode.label_text, order_number: @pipisode.order_number, phonicsset_id: @pipisode.phonicsset_id, pipisode_overview: @pipisode.pipisode_overview, pipisode_overview_french: @pipisode.pipisode_overview_french, pipisode_title: @pipisode.pipisode_title, programmodule_id: @pipisode.programmodule_id, publishable: @pipisode.publishable, transcript_english: @pipisode.transcript_english, transcript_french: @pipisode.transcript_french, transcript_mandarin: @pipisode.transcript_mandarin, transcript_spanish: @pipisode.transcript_spanish, video_filename: @pipisode.video_filename }
    end

    assert_redirected_to pipisode_path(assigns(:pipisode))
  end

  test "should show pipisode" do
    get :show, id: @pipisode
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pipisode
    assert_response :success
  end

  test "should update pipisode" do
    patch :update, id: @pipisode, pipisode: { image_filename: @pipisode.image_filename, interactive_video: @pipisode.interactive_video, label_text: @pipisode.label_text, order_number: @pipisode.order_number, phonicsset_id: @pipisode.phonicsset_id, pipisode_overview: @pipisode.pipisode_overview, pipisode_overview_french: @pipisode.pipisode_overview_french, pipisode_title: @pipisode.pipisode_title, programmodule_id: @pipisode.programmodule_id, publishable: @pipisode.publishable, transcript_english: @pipisode.transcript_english, transcript_french: @pipisode.transcript_french, transcript_mandarin: @pipisode.transcript_mandarin, transcript_spanish: @pipisode.transcript_spanish, video_filename: @pipisode.video_filename }
    assert_redirected_to pipisode_path(assigns(:pipisode))
  end

  test "should destroy pipisode" do
    assert_difference('Pipisode.count', -1) do
      delete :destroy, id: @pipisode
    end

    assert_redirected_to pipisodes_path
  end
end
